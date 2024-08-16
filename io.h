/* 
 * File:   io.h
 * Author: Eric Liu
 *
 * Created on December 20, 2019, 3:44 PM
 */

#ifndef IO_H
#define	IO_H

#ifdef	__cplusplus
extern "C" {
#endif

//-------------- I/O setting ---------------------
// 1 = in 0 = out
#define V_INPUT   		LATAbits.LATA0     	// 5V power input
#define	SEGC			LATAbits.LATA1	    //
#define	SEGG			LATAbits.LATA2	    //
#define TP1             LATAbits.LATA3       //ADC
#define	SEG_DOT			LATAbits.LATA4	    //
#define	SEGD			LATAbits.LATA5	    //
//#define	OSC2	LATA6
//#define	OSC1	LATA7
#define PORTA_TRIS      0b00000000      

#define	Sensor1			PORTBbits.RB0         //Feeder high
//#define			RB1
#define SW1             PORTBbits.RB2
#define	C_MOTOR			LATBbits.LATB3      //Capper
//#define	TP3			LATBbits.LATB3      //Capper
#define  SEGA           LATBbits.LATB4
#define  SEGF           LATBbits.LATB5
//#define PGC		LATB6
//#define PGD		LATB7
#define PORTB_TRIS      0b00000101      // 0&2in

#define	SEGE			LATCbits.LATC0
#define	SEGB			LATCbits.LATC1
#define	CATH4			LATCbits.LATC2
#define	CATH2			LATCbits.LATC3
#define	CATH3			LATCbits.LATC4
#define	CATH1			LATCbits.LATC5
#define	TX1             LATCbits.LATC6
#define	RX1             PORTCbits.RC7
#define PORTC_TRIS      0b10000000      //       
 
#define	SW_TOP			PORTDbits.RD0
#define	Sensor_Cap		PORTDbits.RD1     //Cap sensor
#define	Sensor3			PORTDbits.RD2
#define	Sensor2         PORTDbits.RD3     //Feeder low
//#define				RD4
#define	SDA				PORTDbits.RD5
#define	SCL				PORTDbits.RD6
//#define				RD7
#define PORTD_TRIS      0b01101111      //      

#define	FMotor_nFault   PORTEbits.RE0	// feeder motor driver fault
#define	FMotor_IN2		LATEbits.LATE1  // feeder Motor+
#define	FMotor_IN1		LATEbits.LATE2	// feeder Motor-
#define	LIFTSW			PORTEbits.RE3
#define	CAPPERTRIG		PORTEbits.RE4
#define	SO1             LATEbits.LATE5	//Solenoid
#define	Sensor_Drum     PORTEbits.RE6  //Drum sensor
#define	SW_BOT			PORTEbits.RE7
#define PORTE_TRIS      0b11011001      //

//#define			RF0
//#define			RF1
//#define			RF2
//#define	TP2			RF3	// usb
//#define	TP3			RF4	// usb
#define	LMotor_nFault   PORTFbits.RF5	// lift motor driver fault
#define	I11				LATFbits.LATF6  // Lifter Motor+
#define	I01				LATFbits.LATF7	// Lifter Motor-
#define PORTF_TRIS      0b00100000      //

#define USB_5V			PORTGbits.RG0
//#define TX2             LATGbits.LATG1
//#define RX2             PORTGbits.RG2
#define TP4             LATGbits.LATG3
#define TP5             LATGbits.LATG4
//#define			LATG5
//#define			LATG6
//#define			LATG7
#define PORTG_TRIS      0b00000101      // 


#ifdef	__cplusplus
}
#endif

#endif	/* IO_H */

