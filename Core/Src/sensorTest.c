/*
 * sensorTest.c
 *
 *  Created on: May 8, 2024
 *      Author: Nazmi Aras
 *		Github: nazmiaras
 */

#include "MPU6050.h"
#include <stdio.h>
#include "stm32f4xx_hal.h"

static SensorData_t sensorData;

extern UART_HandleTypeDef huart3;

void sensorTest_init(void){
	MPU6050_initialize(&sensorData, FS_1000, AFS_4G);
}

void sensorTest_print_acc_values(void){
	char buffer[100];
	int32_t len;

	MPU6050_read_data(&sensorData);

	len = sprintf(buffer,"Acc: X:%f Y:%f Z:%f\n",sensorData.acc.X,sensorData.acc.Y,sensorData.acc.Y);
	HAL_UART_Transmit(&huart3, (uint8_t*)&buffer, len, 100);
}

void sensorTest_print_gyro_values(void){
	char buffer[100];
	int32_t len;

	MPU6050_read_data(&sensorData);

	len = sprintf(buffer,"Gyro: X:%f Y:%f Z:%f\n",sensorData.gyro.X,sensorData.gyro.Y,sensorData.gyro.Y);
	HAL_UART_Transmit(&huart3, (uint8_t*)&buffer, len, 100);
}
