################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/hwdrivers/Src/MPU6050.c \
../Drivers/hwdrivers/Src/sensorDriver.c 

OBJS += \
./Drivers/hwdrivers/Src/MPU6050.o \
./Drivers/hwdrivers/Src/sensorDriver.o 

C_DEPS += \
./Drivers/hwdrivers/Src/MPU6050.d \
./Drivers/hwdrivers/Src/sensorDriver.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/hwdrivers/Src/%.o Drivers/hwdrivers/Src/%.su Drivers/hwdrivers/Src/%.cyclo: ../Drivers/hwdrivers/Src/%.c Drivers/hwdrivers/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/hwdrivers/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-hwdrivers-2f-Src

clean-Drivers-2f-hwdrivers-2f-Src:
	-$(RM) ./Drivers/hwdrivers/Src/MPU6050.cyclo ./Drivers/hwdrivers/Src/MPU6050.d ./Drivers/hwdrivers/Src/MPU6050.o ./Drivers/hwdrivers/Src/MPU6050.su ./Drivers/hwdrivers/Src/sensorDriver.cyclo ./Drivers/hwdrivers/Src/sensorDriver.d ./Drivers/hwdrivers/Src/sensorDriver.o ./Drivers/hwdrivers/Src/sensorDriver.su

.PHONY: clean-Drivers-2f-hwdrivers-2f-Src

