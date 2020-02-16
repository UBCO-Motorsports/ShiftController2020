################################################################################
# Automatically-generated file. Do not edit!
################################################################################

#Progress monitor hint: 33
first : all
-include ../makefile.init

# This file contains definitions of environment variables used in the makefiles and .args files if exist.
-include makefile.local

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include Generated_Code/subdir.mk
-include Project_Settings/Startup_Code/subdir.mk
-include SDK/platform/devices/S32K116/startup/subdir.mk
-include SDK/platform/devices/subdir.mk
-include SDK/platform/drivers/src/clock/S32K1xx/subdir.mk
-include SDK/platform/drivers/src/clock/subdir.mk
-include SDK/platform/drivers/src/edma/subdir.mk
-include SDK/platform/drivers/src/flexcan/subdir.mk
-include SDK/platform/drivers/src/interrupt/subdir.mk
-include SDK/platform/drivers/src/lpit/subdir.mk
-include SDK/platform/drivers/src/lpspi/subdir.mk
-include SDK/platform/drivers/src/lpuart/subdir.mk
-include SDK/platform/drivers/src/pins/subdir.mk
-include SDK/rtos/osif/subdir.mk
-include Sources/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
ShiftController2020.elf \

EXECUTABLES_QUOTED += \
"ShiftController2020.elf" \

EXECUTABLES_OS_FORMAT += \
ShiftController2020.elf \

SECONDARY_SIZE += \
ShiftController2020.siz \

SECONDARY_SIZE_QUOTED += \
"ShiftController2020.siz" \

SECONDARY_SIZE_OS_FORMAT += \
ShiftController2020.siz \


# All Target
all: warning-messages explicit-dependencies ShiftController2020.elf secondary-outputs

# Tool invocations
ShiftController2020.elf: $(OBJS) C:/Users/Lukas/Documents/GitHub/ShiftController2020/S32DS_Project/ShiftController2020/Project_Settings/Linker_Files/S32K116_17_flash.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Executing target #34 $@'
	@echo 'Invoking: Standard S32DS C Linker'
	arm-none-eabi-gcc -o "ShiftController2020.elf" "@ShiftController2020.args"  $(USER_OBJS_QUOTED) $(LIBS_QUOTED)
	@echo 'Finished building target: $@'
	@echo ' '

ShiftController2020.siz: $(EXECUTABLES)
	@echo 'Executing target #35 $@'
	@echo 'Invoking: Standard S32DS Print Size'
	arm-none-eabi-size --format=berkeley $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) ./*/*.d ./*/*/*/*.d ./*/*/*/*/*/*.d ./*/*/*/*/*/*/*.d  ./*/*.o ./*/*/*/*.o ./*/*/*/*/*/*.o ./*/*/*/*/*/*/*.o ./*/*/*.o  $(SECONDARY_SIZE_QUOTED) $(EXECUTABLES_QUOTED)
	-@echo ' '

secondary-outputs: $(SECONDARY_SIZE)

.PHONY: all clean dependents explicit-dependencies warning-messages
.SECONDARY:

-include ../makefile.targets

explicit-dependencies: 

warning-messages: 

