/* 
 * File:   main.h
 * Author: victorlu
 *
 * Created on December 20, 2019, 3:38 PM
 */

#ifndef MAIN_H
#define	MAIN_H

#ifdef	__cplusplus
extern "C" {
#endif

// CONFIG1L
#pragma config WDTEN = OFF      // Watchdog Timer Enable bit (WDT disabled (control is placed on SWDTEN bit))
#pragma config PLLDIV = 1	//1       // PLL Prescaler Selection bits (No prescale (4 MHz oscillator input drives PLL directly))
#pragma config STVREN = ON	//OFF     // Stack Overflow/Underflow Reset Enable bit (Reset on stack overflow/underflow disabled)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))
#pragma config DEBUG = OFF

// CONFIG1H
#pragma config CPUDIV = OSC1    // CPU System Clock Postscaler (No CPU system clock divide)
#pragma config CP0 = OFF        // Code Protection bit (Program memory is not code-protected)

// CONFIG2L
#pragma config FOSC = INTOSCPLLO	//HSPLL   // Oscillator Selection bits (INTOSC with PLL enabled, CLKO on RA6 and Port function on RA7)
#pragma config FCMEN = OFF	//ON       // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor enabled)
#pragma config IESO = OFF	//ON        // Two-Speed Start-up (Internal/External Oscillator Switchover) Control bit (Two-Speed Start-up enabled)

// CONFIG2H
#pragma config WDTPS = 2048    // Watchdog Timer Postscaler Select bits (1:32768) default:32768

// CONFIG3L

// CONFIG3H
#pragma config CCP2MX = DEFAULT // ECCP2 MUX bit (ECCP2/P2A is multiplexed with RC1)
#pragma config MSSPMSK = MSK5	//MSK7   // MSSP Address Masking Mode Select bit (7-Bit Address Masking mode enable)


//#include <xc.h>
    
#define _XTAL_FREQ 8000000
    
#define EEPROM_SolenoidPullTime          0x0010
#define EEPROM_SolenoidReleaseTime       0x0020
#define EEPROM_LifterHoldTime            0x0030
#define EEPROM_LifterUpPosition          0x0040
#define EEPROM_NumHigh                   0x0050
#define EEPROM_NumLow                    0x0060
#define EEPROM_TotalNumHighL             0x0070
#define EEPROM_TotalNumHighH             0x0080
#define EEPROM_TotalNumLowL              0x0090
#define EEPROM_TotalNumLowH              0x00A0
//#define EEPROM_DAdd		                 0x0802  //EEPROM_DIndex+2	//0x0000-0x1FFF (0x2000=0x0000)
    
#define Busy1USART( )  (!TXSTA2bits.TRMT)
#define DataRdy1USART( ) (PIR3bits.RC2IF)

#define true            1
#define false           !true

#define low				0// PIC18F65J50 Configuration Bit Settings
#define high			1

#define off				0
#define on				1

#define Cmotor_on       1
#define Cmotor_off      0

#define Fmotor_on       1
#define Fmotor_off      0

#define Sol_on          1
#define Sol_off         0

#define stop			0
#define start			1

#define down			1
#define up				0

#define Sol_Activation_On_Time    30  //*10ms //default :800
#define Sol_Activation_Off_Time   50  //*10ms //default :2700
#define Lift_Up_Hold              5  //*100ms default :30 used --> 5
#define Lift_Up_Time              50  //5 secs *100ms
#define Rotate1_Time              50  //5 secs *100ms
#define Rotate2_Time              50  //5 secs *100ms
#define swcount50ms		          20  // >2 secs *100ms
#define error1Time                50  //5 secs *100ms //sensor2 counter
#define error2Time                30  //5 secs *100ms //sensor1 counter
#define error3Time                30 //*100ms //cap sensor counter
#define error4Time                30 //*100ms //lifter top limit switch counter
#define error5Time                30  // *100ms //lifter bottom limit switch counter
#define error6Time                30 // *100ms

#define REFRESH_INTERVAL   6

//#define T0_Value	0x20	//4-5ms
#define T0_Value	0xDF
#define T1_Value	0xF82F//0xFC19 //default:0x6CF0	//50ms


#define T1_ValueH   (T1_Value&0xFF00)/0x0100
#define T1_ValueL   T1_Value&0x00FF	//
    
#define Version		23

int edigit = 0;

#ifdef	__cplusplus
}
#endif

#endif	/* MAIN_H */

