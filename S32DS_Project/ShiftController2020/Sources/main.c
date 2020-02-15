/* ###################################################################
**     Filename    : main.c
**     Processor   : S32K11x
**     Abstract    :
**         Main module.
**         This module contains user's application code.
**     Settings    :
**     Contents    :
**         No public methods
**
** ###################################################################*/
/*!
** @file main.c
** @version 01.00
** @brief
**         Main module.
**         This module contains user's application code.
*/
/*!
**  @addtogroup main_module main module documentation
**  @{
*/
/* MODULE main */


/* Including necessary module. Cpu.h contains other modules needed for compiling.*/
#include "Cpu.h"

  volatile int exit_code = 0;

/* User includes (#include below this line is not maintained by Processor Expert) */

//Hardware definitions
//LED1
#define LED1PORT PTA
#define LED1PIN 13
//LED2
#define LED2PORT PTA
#define LED2PIN 12

//Bridge 1
#define INH1PORT PTC
#define INH1PIN 14
#define IN1PORT PTC
#define IN1PIN 2
#define CUR1PORT PTC
#define CUR1PIN 1

//Bridge 2
#define INH2PORT PTC
#define INH2PIN 15
#define IN2PORT PTC
#define IN2PIN 3
#define CUR2PORT PTC
#define CUR2PIN 16

//Shift timing in ms
const uint16_t upShiftDuration = 200;
const uint16_t downShiftDuration = 300;
const uint16_t neutralShiftDuration = 100;

//Variables
volatile int send_WD = 0;
volatile uint8_t upPaddleState = 0;
volatile uint8_t downPaddleState = 0;
volatile uint8_t neutralRequestState = 0;
volatile uint8_t stopShiftState = 0;
volatile uint16_t clutchPosition = 0;
volatile uint8_t shifting = 0;

//Converts an 16 bit integer into a string ready for UART output
uint8_t Char_Convert (uint16_t input, uint8_t *output);
uint8_t Char_Convert (uint16_t input, uint8_t *output) {
	uint16_t temp = input;
	uint8_t curDigit;
	uint8_t asciiDigit;
	uint8_t tempOut[8];
	int i = 0;
	if (temp == 0) {
		//If zero, output asccii zero
		tempOut[0] = 48U;
	} else {
		while (temp > 0) {
			//Extract next digit

			curDigit = (temp % 10);

			//Convert digit to ascii
			asciiDigit =  curDigit + 48U;
			//Load into output array
			tempOut[i] = asciiDigit;
			i++;
			temp = temp / 10;
		}
	}
	//Loop through string reversing endianess for UART
	int i2 = i;
	while (i2 >= 0 ) {
		output[i-i2] = tempOut[i2];
		i2--;
	}

	return i+1;
}

void Init_SBC(void);
void Init_SBC(void) {
	uint8_t rec_buffer[2];
	uint8_t SBC_Setup[2];


	//Setup watchdog
	SBC_Setup[0] = 0x00;
	SBC_Setup[1] = 0x4;
	LPSPI_DRV_MasterTransferBlocking(LPSPICOM1,SBC_Setup, rec_buffer, 2, 1000);


	//Force normal mode and enable v2 for CAN transciever
	SBC_Setup[0] = 0x00;
	SBC_Setup[1] = 0x2E;
	LPSPI_DRV_MasterTransferBlocking(LPSPICOM1,SBC_Setup, rec_buffer, 2, 1000);

}

void FeedWatchDog (void);
void FeedWatchDog(void) {
	uint8_t SBC_Setup[2];
	uint8_t rec_buffer[2];

	SBC_Setup[0] = 0x00;
	SBC_Setup[1] = 0x4;

	LPSPI_DRV_MasterTransferBlocking(LPSPICOM1, SBC_Setup, rec_buffer, 2, 1000);

}

void start_Shifting_Timer(uint32_t duration_in_ms);
void start_Shifting_Timer(uint32_t duration_in_ms) {
	LPIT_DRV_SetTimerPeriodByUs(INST_LPIT1, 1U, duration_in_ms * 1000);

	LPIT_DRV_StartTimerChannels(INST_LPIT1,2);
}

void execute_UpShift(void);
void execute_UpShift(void) {

	//Setup directions
	PINS_DRV_WritePin(IN1PORT, IN1PIN, 0);
	PINS_DRV_WritePin(IN2PORT, IN2PIN, 1);

	//Enable bridges
	PINS_DRV_WritePin(INH1PORT, INH1PIN, 1);
	PINS_DRV_WritePin(INH2PORT, INH2PIN, 1);


	shifting = 1;

	start_Shifting_Timer(upShiftDuration);

}

void execute_DownShift(void);
void execute_DownShift(void) {
	//Setup directions
	PINS_DRV_WritePin(IN1PORT, IN1PIN, 1);
	PINS_DRV_WritePin(IN2PORT, IN2PIN, 0);

	//Enable bridges
	PINS_DRV_WritePin(INH1PORT, INH1PIN, 1);
	PINS_DRV_WritePin(INH2PORT, INH2PIN, 1);

	shifting = 1;
	start_Shifting_Timer(downShiftDuration);

}

void execute_NeutralShift(void);
void execute_NeutralShift(void) {

	//Setup directions
	PINS_DRV_WritePin(IN1PORT, IN1PIN, 0);
	PINS_DRV_WritePin(IN2PORT, IN2PIN, 1);

	//Enable bridges
	PINS_DRV_WritePin(INH1PORT, INH1PIN, 1);
	PINS_DRV_WritePin(INH2PORT, INH2PIN, 1);


	shifting = 1;
	start_Shifting_Timer(neutralShiftDuration);

}

void stop_Shifting(void);
void stop_Shifting(void) {

	LPIT_DRV_StopTimerChannels(INST_LPIT1,2U);

	//Stop bridge 1
	PINS_DRV_WritePin(INH1PORT, INH1PIN, 0);
	PINS_DRV_WritePin(IN1PORT, IN1PIN, 0);

	//Stop bridge 2
	PINS_DRV_WritePin(INH2PORT, INH2PIN, 0);
	PINS_DRV_WritePin(IN2PORT, IN2PIN, 0);

	//Reset all states
	shifting = 0;
	upPaddleState = 0;
	downPaddleState = 0;
	neutralRequestState = 0;
	stopShiftState = 0;


}

void LPIT_ISR(void);
void LPIT_ISR(void) {
	uint32_t flag = LPIT_DRV_GetInterruptFlagTimerChannels(INST_LPIT1,3);
	if ((flag & 2) == 2) {
		stopShiftState = 1;
		LPIT_DRV_ClearInterruptFlagTimerChannels(INST_LPIT1,2);
	}

	if ((flag & 1) == 1){
		send_WD = 1;
		LPIT_DRV_ClearInterruptFlagTimerChannels(INST_LPIT1,1);
	}
}

void SendCANData(uint32_t mailbox, uint32_t messageId, uint8_t * data, uint32_t len)
{
    flexcan_data_info_t dataInfo =
    {
            .data_length = 2,
            .msg_id_type = FLEXCAN_MSG_ID_STD,
    };

    /* Configure TX message buffer with index TX_MSG_ID and TX_MAILBOX*/
    FLEXCAN_DRV_ConfigTxMb(INST_CANCOM1, mailbox, &dataInfo, messageId);

    /* Execute send non-blocking */
    FLEXCAN_DRV_Send(INST_CANCOM1, mailbox, &dataInfo, messageId, data);
}


void Init_Board(void);
void  Init_Board(void) {

	//Initialize clock and set configuration
	CLOCK_SYS_Init(g_clockManConfigsArr, CLOCK_MANAGER_CONFIG_CNT, g_clockManCallbacksArr, CLOCK_MANAGER_CALLBACK_CNT);
	CLOCK_SYS_UpdateConfiguration(0U, CLOCK_MANAGER_POLICY_AGREEMENT);

	//Initialize pins
	PINS_DRV_Init(NUM_OF_CONFIGURED_PINS, g_pin_mux_InitConfigArr);
	//Turn on both LEDS on the board
	PINS_DRV_WritePin(LED1PORT, LED1PIN, 1);
	//PINS_DRV_WritePin(LED2PORT, LED2PIN, 1);

	//Initialize CAN and message buffer masks
	FLEXCAN_DRV_Init(INST_CANCOM1, &canCom1_State, &canCom1_InitConfig0);

	//Initialize SPI
	LPSPI_DRV_MasterInit(LPSPICOM1,&lpspiCom1State,&lpspiCom1_MasterConfig0);

	//Initialize timer interrupt for SBC watchdog triggering
	LPIT_DRV_Init(INST_LPIT1, &lpit1_InitConfig);
	LPIT_DRV_InitChannel(INST_LPIT1, 0U, &lpit1_ChnConfig0);
	LPIT_DRV_SetTimerPeriodByUs(INST_LPIT1, 0U, 100000);
	LPIT_DRV_StartTimerChannels(INST_LPIT1,1);
	//Install LPIT Interrupt handler
	INT_SYS_InstallHandler(LPIT0_IRQn, &LPIT_ISR, (isr_t *)0);


	//Initialize SBC
	Init_SBC();
	//FeedWatchDog();
}

//CAN bus init data
const flexcan_data_info_t dataInfo =
	{
			.data_length = 8U,
			.msg_id_type = FLEXCAN_MSG_ID_STD,
	};

flexcan_msgbuff_t data;


void init_CAN(void);
void init_CAN(void){
	//Initialize message buffer filters
	FLEXCAN_DRV_ConfigRxMb(INST_CANCOM1,0U, &dataInfo, 0x3E7);
	FLEXCAN_DRV_ConfigRxMb(INST_CANCOM1,1U, &dataInfo, 0x2C0);
}



/*!
  \brief The main function for the project.
  \details The startup initialization sequence is the following:
 * - startup asm routine
 * - main()
*/
int main(void)
{
  /* Write your local variable definition here */

  /*** Processor Expert internal initialization. DON'T REMOVE THIS CODE!!! ***/
  #ifdef PEX_RTOS_INIT
    PEX_RTOS_INIT();                   /* Initialization of the selected RTOS. Macro is defined by the RTOS component. */
  #endif
  /*** End of Processor Expert internal initialization.                    ***/

  /* Write your code here */


    Init_Board();
    init_CAN();

    //Initialize timer interrupt for shifting completion
	LPIT_DRV_InitChannel(INST_LPIT1, 1U, &lpit1_ChnConfig1);


	//Install LPIT Interrupt handler
	INT_SYS_InstallHandler(LPIT0_IRQn, &LPIT_ISR, (isr_t *)0);

    for (;;) {

    	if (send_WD == 1) {

    		status_t result;
    		//flexcan_msgbuff_t data;

    		//Paddle states
    		FLEXCAN_DRV_ConfigRxMb(INST_CANCOM1,0U, &dataInfo, 0x3E7);
    		result = FLEXCAN_DRV_ReceiveBlocking(INST_CANCOM1, 0U, &data, 10);

    		if (result == STATUS_SUCCESS) {
    			upPaddleState = data.data[1];
    			downPaddleState = data.data[3];
    		} else {
    			upPaddleState = 0;
    			downPaddleState = 0;
    		}



    		//Neutral request and clutch position
    		FLEXCAN_DRV_ConfigRxMb(INST_CANCOM1,1U, &dataInfo, 0x2C0);
    		result = FLEXCAN_DRV_ReceiveBlocking(INST_CANCOM1,1U, &data, 10);

    		if (result == STATUS_SUCCESS) {
    			neutralRequestState = data.data[5];
				clutchPosition = data.data[7] + (data.data[6]<<8);
			} else {
				neutralRequestState = 0;
				clutchPosition = 0;
			}


    		FeedWatchDog();
    		send_WD = 0;
    		PINS_DRV_TogglePins(LED1PORT, 1 << LED1PIN);
    	}

    	if (stopShiftState == 1) {
    		stop_Shifting();

    	}

    	//Check local variables for current shifting states
    	if (shifting != 1) {
    		PINS_DRV_WritePin(LED2PORT,LED2PIN, upPaddleState | downPaddleState);
    		if (upPaddleState == 1) {
    			execute_UpShift();
    		} else if (downPaddleState == 1) {
    			execute_DownShift();
    		} else if (neutralRequestState == 1) {
    			execute_NeutralShift();
    		}
    	}

    }


  /*** Don't write any code pass this line, or it will be deleted during code generation. ***/
  /*** RTOS startup code. Macro PEX_RTOS_START is defined by the RTOS component. DON'T MODIFY THIS CODE!!! ***/
  #ifdef PEX_RTOS_START
    PEX_RTOS_START();                  /* Startup of the selected RTOS. Macro is defined by the RTOS component. */
  #endif
  /*** End of RTOS startup code.  ***/
  /*** Processor Expert end of main routine. DON'T MODIFY THIS CODE!!! ***/
  for(;;) {
    if(exit_code != 0) {
      break;
    }
  }
  return exit_code;
  /*** Processor Expert end of main routine. DON'T WRITE CODE BELOW!!! ***/
} /*** End of main routine. DO NOT MODIFY THIS TEXT!!! ***/

/* END main */
/*!
** @}
*/
/*
** ###################################################################
**
**     This file was created by Processor Expert 10.1 [05.21]
**     for the Freescale S32K series of microcontrollers.
**
** ###################################################################
*/
