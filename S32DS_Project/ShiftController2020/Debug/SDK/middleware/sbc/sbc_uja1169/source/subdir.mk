################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../SDK/middleware/sbc/sbc_uja1169/source/sbc_uja1169_driver.c" \

C_SRCS += \
../SDK/middleware/sbc/sbc_uja1169/source/sbc_uja1169_driver.c \

OBJS_OS_FORMAT += \
./SDK/middleware/sbc/sbc_uja1169/source/sbc_uja1169_driver.o \

C_DEPS_QUOTED += \
"./SDK/middleware/sbc/sbc_uja1169/source/sbc_uja1169_driver.d" \

OBJS += \
./SDK/middleware/sbc/sbc_uja1169/source/sbc_uja1169_driver.o \

OBJS_QUOTED += \
"./SDK/middleware/sbc/sbc_uja1169/source/sbc_uja1169_driver.o" \

C_DEPS += \
./SDK/middleware/sbc/sbc_uja1169/source/sbc_uja1169_driver.d \


# Each subdirectory must supply rules for building sources it contributes
SDK/middleware/sbc/sbc_uja1169/source/sbc_uja1169_driver.o: ../SDK/middleware/sbc/sbc_uja1169/source/sbc_uja1169_driver.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@SDK/middleware/sbc/sbc_uja1169/source/sbc_uja1169_driver.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "SDK/middleware/sbc/sbc_uja1169/source/sbc_uja1169_driver.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '


