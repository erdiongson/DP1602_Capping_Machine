/*
 * File:   usart.c
 * Author: SYSTEM
 *
 * Created on February 28, 2020, 10:16 AM
 */


#include <xc.h>
#include "io.h"
#include "main.h"

/****************************************************************************
Function:		USART Initialization
******************************************************************************/
void initUSART(void)
{
    // setup USART
    TXSTA2bits.SYNC = 0; // Async operation
    TXSTA2bits.TX9 = 0; // No tx of 9th bit
    TXSTA2bits.TXEN = 1; // Enable transmitter
    RCSTA2bits.RX9 = 0; // No rx of 9th bit
    RCSTA2bits.CREN = 1; // Enable receiver
    TXSTA2bits.CSRC = 0; //Clock Source Select bit for syn - Asyn is dont care
    RCSTA2bits.ADDEN = 1;
    RCSTA2bits.SPEN = 1; // Enable serial port
    
    // Setting for 19200 BPS
    BAUDCON2bits.BRG16 = 0; // Divisor at 8 bit
    TXSTA2bits.BRGH = 1; // No high-speed baudrate
    PIE3bits.RC2IE = 1;
    PIE3bits.TX2IE = 0;
    //(FOSC/baudrate/64)-1 = SPBRG1
    SPBRG2 = 25;  //48MHZ = 38; // divisor value for 19200
    SPBRGH2 = 0;    
}

/****************************************************************************
Function:		USART Write Function
******************************************************************************/
void Write1USART(char data)
{
  	TXREG2 = data;      // Write the data byte to the USART2

	while (Busy1USART());
}	// end Write1USART

/****************************************************************************
Function:		USART Read Function
******************************************************************************/
char Read1USART(void)
{
    char result;
    
    if (RCSTA2bits.OERR) 
    {    //has there been an overrun error?
        RCSTA2bits.CREN = 0; //disable Rx to clear error
        result = RCREG2;    //purge receive buffer
        result = RCREG2;    //purge receive buffer
        RCSTA2bits.CREN = 1;    //re-enable Rx
    } 
    else 
    {
        result = RCREG2;
    }
    
    return result;
}
