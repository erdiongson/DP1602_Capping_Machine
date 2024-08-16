/*
 * File:   main.c
 * Author: Kok Kenny
 *
 * Created on May 03, 2021, 3:56 PM
 */


#include <xc.h>     
#include "io.h"
#include "main.h"
#include "i2c.h"

#define Serial_SOT	0xA5
#define Serial_EOT	0x5A
#define NAK         0x15
#define CMD_BUSY    0x16

enum Op_Mode{IDLE_MODE, MANUAL_MODE, AUTO_MODE};
enum Lifter_Stage{standby, moveup, stoptop, movedown};

unsigned char Serial_Flag = 0;
unsigned char Serial_GData = 0;
unsigned char Serial_Buffer[16];
unsigned char Serial_Temp_Buffer[16];
unsigned char Serial_Buffer_Out[16];
unsigned char Stop = 0;
unsigned char Busy = 0;

unsigned int Serial_Count;
unsigned int ETemp;

volatile long number=0, Old_Number = 0xFFFF;

volatile long TotalNumL=0, TotalNumH=0;

volatile long int TotalNum = 0;

volatile int digit=1; //display numbering
volatile int error_digit=1; //display error code
volatile int units, tens, hundreds, thousands;  // for 7-segment 4 digits display
volatile int EAdd_High, EAdd_Low, Edigit=0;     // eeprom address location
volatile int TotalNum_HighH, TotalNum_HighL, TotalNum_LowH, TotalNum_LowL;     // eeprom address location
volatile int Temp;	//, UpDate_Index;
volatile int TempNum;	//, UpDate_Index;
volatile int startup = 1;

volatile char OpMode = MANUAL_MODE;
volatile char error_number = '0';
volatile char warning_number = '0';
volatile char update_7seg = false;      // Added in v8.2 
volatile char TMR0IF_triggered = false;
volatile char TMR1IF_triggered = false;
volatile char TMR2IF_triggered = false;
volatile char error = off;
volatile char warning = off;
volatile char FeederRotate1 = off;
volatile char FeederRotate2 = off;

volatile long error1counter = error1Time; //sensor2 counter
volatile long error2counter = error2Time; //sensor1 counter
volatile long error3counter = error3Time; //cap sensor counter
volatile long error4counter = error4Time; //lifter top limit switch counter
volatile long error5counter = error5Time; //lifter bottom limit switch counter
volatile long error6counter = error6Time; //button not release 

unsigned int LiftUpHoldCounter = Lift_Up_Hold; //time delay for lifter to pause when it reaches the lift upper limit sensor

volatile int sw1counter = swcount50ms;
volatile int LiftUpTime = Lift_Up_Time;
volatile int FeederRotate1Time = Rotate1_Time;
volatile int FeederRotate2Time = Rotate1_Time;

char lifter = standby;
char Lifter_Use = 0;
char LifterFault = 0;

void ISR_UpdateDisplay(void);
void init(void);
void DelayTime_1ms(unsigned short int time);
void DelayTime_10ms(unsigned short int time);
void Lifter_Init(void);
void Lifter_Stop ();
void Lifter_Up();
void Lifter_Down();
void Lifter_Brake ();
void Feeder_Stop ();
void Feeder_Rotate1();
void Feeder_Rotate2();
void Feeder_Brake ();
void CapFillingStart (void);
void InitTimer0(void);
void InitTimer1(void);
void InitTimer2(void);
void flush(void);
void flushOut(void);
extern void displayinit(void);
extern void displayno(int digit, int number);
extern void Display_Error(int enumber);
extern void Display_Warning(int enumber);
extern void Display_Version();
extern void i2c_Init(void);
extern void i2c_Wait(void);
extern void i2c_Start(void);
extern void i2c_Restart(void);
extern void i2c_Stop(void);
extern void i2c_Write(unsigned char data);
extern void i2c_Address(unsigned char address, unsigned char mode);
extern int i2c_Read(unsigned char ack);
extern void write_i2c(long address, int data);
extern int read_i2c(long address);
extern void initUSART(void);
extern void Write1USART(char data);
extern char Read1USART(void);


void main(void) 
{
    unsigned int sol_activation_on_time = Sol_Activation_On_Time;
    unsigned int sol_activation_off_time = Sol_Activation_Off_Time;
    unsigned int lifter_stop_delay_time = 0;
    volatile unsigned char sol_on_time;
    volatile unsigned char sol_off_time;
    volatile unsigned char lift_up_hold_time;
    volatile unsigned char lifter_up_position;
    volatile unsigned char num1;
    volatile unsigned char num2;
    volatile unsigned char num3;
    volatile unsigned char num4;
    
    char start_capping = off;
    char FirstRun = true;
	long LTemp; // store EEPROM address hi and lo byte
    char i, j; //for loop counter
    int cap_success = 0;
    int swcounterflag=0;
    int capin = 1;
    
    
  	GIE	= 0;
	init();
	i2c_Init();
	displayinit();
    initUSART();
    
     /* Enable interrupt priority */
  	RCONbits.IPEN = 1;
    
    /* Make receive interrupt high priority */
  	IPR3bits.RC2IP = 1;
    
    /* Enable all high priority interrupts */
  	INTCONbits.GIEH = 1;
    INTCONbits.GIE=1;
    //PIE1bits.RCIE=1;
 
    //RCSTA1bits.CREN = 1; // Continuos receiver

	
//********Read the current number of capping cycles done from eeprom*************
    
    EAdd_High = EEPROM_NumHigh;
    EAdd_Low = EEPROM_NumLow;
    
    TotalNum_HighH = EEPROM_TotalNumHighH;
    TotalNum_HighL = EEPROM_TotalNumHighL;
    
    TotalNum_LowH = EEPROM_TotalNumLowH;
    TotalNum_LowL = EEPROM_TotalNumLowL;
	
    number = read_i2c(EAdd_High);
	number *= 0x100;
	number += read_i2c(EAdd_Low); //default data in EEPROM is 0xFFFF
    
    TotalNumL = read_i2c(TotalNum_LowH);
	TotalNumL *= 0x100;
	TotalNumL += read_i2c(TotalNum_LowL); //default data in EEPROM is 0xFFFF
    
    TotalNumH = read_i2c(TotalNum_HighH);
	TotalNumH *= 0x100;
	TotalNumH += read_i2c(TotalNum_HighL); //default data in EEPROM is 0xFFFF
    
	if (number > 9999) 
    {
		number = 0;
		Old_Number = number+1;	//need to clear the EEPROM
	}
    
    if (TotalNumL > 9999) 
    {
		TotalNumL = 0;
	}
    
    if (TotalNumH > 9999) 
    {
		TotalNumH = 0;
	}
    
    TotalNum = (TotalNumH * 10000) + TotalNumL;
    
    DelayTime_1ms(100);

    //0x30 -> ASCII number 0
    //convert to ASCII representation for the numbers 0 to 9 for each digit
	units = 0x30+(number%10); 
	tens = 0x30+((number%100)/10);
	hundreds = 0x30+((number%1000)/100);
	thousands = 0x30+(number/1000);
//**********************************************************************************	
    Display_Version();
    
	InitTimer0();
 	InitTimer1();
    InitTimer2();
            
    do
    {
        Lifter_Init();
         if(error5counter == 0)
            {
                break;
            }
    }while(SW_BOT);

	C_MOTOR	= Cmotor_off;	//OFF
    Feeder_Stop();
    
    
    TMR0IF_triggered = false;
    TMR1IF_triggered = false;
    TMR2IF_triggered = false;
    
     /****************************************************************************
               Read Parameters
******************************************************************************/
    INTCONbits.GIE=0;
    sol_on_time = read_i2c(EEPROM_SolenoidPullTime);
    sol_off_time = read_i2c(EEPROM_SolenoidReleaseTime);
    lift_up_hold_time = read_i2c(EEPROM_LifterHoldTime);
    lifter_up_position = read_i2c(EEPROM_LifterUpPosition);
    INTCONbits.GIE=1;
    
     /*************************************************************************
               Solenoid activation ON time
    **************************************************************************/ 
    if(sol_on_time > 0xC8)
    {
        sol_on_time = 0x1E;
        sol_activation_on_time=30;
        INTCONbits.GIE=0;
        write_i2c(EEPROM_SolenoidPullTime, sol_on_time);
        INTCONbits.GIE=1;
    }
    else
    {
        sol_activation_on_time=sol_on_time;
    }
    
     /*************************************************************************
               Solenoid activation OFF time
    **************************************************************************/ 
    if(sol_off_time > 0xC8)
    {
        sol_off_time = 0x32;
        sol_activation_off_time=50;
        INTCONbits.GIE=0;
        write_i2c(EEPROM_SolenoidReleaseTime, sol_off_time);
        INTCONbits.GIE=1;
    }
    else
    {
        sol_activation_off_time=sol_off_time;
    }
    
    /*************************************************************************
               Lifter up hold time
    **************************************************************************/ 
    if(lift_up_hold_time > 0xC8)
    {
        lift_up_hold_time = 0x05;
        LiftUpHoldCounter=5; //20231221: ediongson - change marker previously 5
        INTCONbits.GIE=0;
        write_i2c(EEPROM_LifterHoldTime, lift_up_hold_time);
        INTCONbits.GIE=1;
    }
    else
    {
        LiftUpHoldCounter=lift_up_hold_time;
    }
    
    /*************************************************************************
               Lifter up position
    **************************************************************************/    
    if(lifter_up_position > 0xC8)
    {
        lifter_up_position = 0x00;
        lifter_stop_delay_time=0;
        INTCONbits.GIE=0;
        write_i2c(EEPROM_LifterUpPosition, lifter_up_position);
        INTCONbits.GIE=1;
    }
    else
    {
        lifter_stop_delay_time = lifter_up_position;
    }
    
    Serial_Buffer_Out[0] = 0x51;
    Serial_Buffer_Out[1] = sol_on_time ;
    Serial_Buffer_Out[2] = sol_off_time ;
    Serial_Buffer_Out[3] = lift_up_hold_time;
    Serial_Buffer_Out[4] = lifter_up_position;
     
/****************************************************************************
                While(1) loop
******************************************************************************/   
	for(;;)
	{
        while(FirstRun)
        {
            if(Sensor2 == 0)
            {
                Feeder_Rotate1();
            }
            else
            {
                Feeder_Stop();
            }
            
            if(Sensor_Drum == 0)
            {
                for (int counter=1; counter<=5; counter++){
                    DelayTime_1ms(1000);
                }
                Feeder_Rotate2();
                DelayTime_1ms(300);
                Feeder_Stop();
            }
            
            C_MOTOR	= Cmotor_off;
                       
            do
            {
                do
                {
                    warning = on;
                    warning_number = '0';
                }while(Sensor3 == 0);
                
                warning = off;
                
                while(Sensor3 == 0);
                
                DelayTime_1ms(100);
                
                while(Sensor3 == 0);
                             
            }while(Sensor3==0);

            C_MOTOR	= Cmotor_on; // turn on to pull ejected cap into position when solenoid turn on  
            DelayTime_1ms(100);
            
            if(Sensor_Cap==0)
            {
                error3counter = error3Time;
                
                do{
                    if(Sensor2 == 0)
                    {
                        Feeder_Rotate1();
                    }
                    if(Sensor_Drum == 0)
                    {
                        for (int counter=1; counter<=5; counter++){
                            DelayTime_1ms(1000);
                        }
                        Feeder_Rotate2();
                        DelayTime_1ms(300);
                        Feeder_Stop();
                    }
                    if(Sensor1 == 1)
                    {
                        Feeder_Stop();
                    }
                    
                    if(error3counter <= 0)
                    {
                        warning = on;
                        warning_number = '3';
                    }
                    
                    C_MOTOR	= Cmotor_on;
                    DelayTime_1ms(100);
                    
                    SO1 = Sol_on;//On                

                    DelayTime_10ms(sol_activation_on_time);

                    SO1 = Sol_off;                

                    DelayTime_10ms(sol_activation_off_time);
                    

                } while(Sensor_Cap == 0 && Sensor3 == 1);
                
                if(Sensor_Cap == 1)
                {
                    capin = 1;
                    
                    if(warning_number == '3')
                    {
                        warning = off;
                        error3counter = error3Time;
                    }
                }
  
               
            }
            else
            {
                capin = 1;
            }
            
            C_MOTOR	= Cmotor_off; 
            
            FirstRun=false;    
                
            if(!Sensor2)    // Feeder motor start
            {
                Feeder_Rotate1();
            }
            if(Sensor_Drum == 0)
            {
                for (int counter=1; counter<=5; counter++){
                    DelayTime_1ms(1000);
                }
                Feeder_Rotate2();
                DelayTime_1ms(300);
                Feeder_Stop();
            }
            else if (Sensor1==1)
            {
                __delay_ms(50);
                if(Sensor1 == 1)
                {
                    Feeder_Stop();
                }
                error1counter = error1Time;
            }
            
            if(FirstRun==false){
                sw1counter=0;                                                                                  
 
            }             
        }  // end while(FirstRun)
//******************End First Run*********************************************//
        
        if (LIFTSW == 1)   // LIFTSW is lifter start input button status , pressed = 0, release =1
        {
            
            Lifter_Use = 0; //default is 0
        }
        else
        {
            Lifter_Use = 1;
        }
            
        if (Lifter_Use == 1)
        {
            start_capping = on;
        }
        
        if ((Sensor3) && (start_capping == on) && (error == off))
        {          
            C_MOTOR = Cmotor_on;               
        } 

		else if ((!Sensor3) || (start_capping == off) || (error == on))
        {
			C_MOTOR = Cmotor_off;
            
            
            if(!Sensor3 && lifter == standby)
            {
                
                do
                {
                    warning = on;
                    warning_number = '0';
                }while(!Sensor3);
                
                warning = off;
            }

        }


     	if(!Sensor2) //feeder motor ON/OFF
        {
            Feeder_Rotate1();
            
            if(error1counter <= 0)
            {
                warning = on;
                warning_number = '1';
                error1counter = error1Time;
            }          
        }
        else if (Sensor2 == 1)
        {
            if(Sensor2)
            {
                error1counter = error1Time;
                warning = off;
            }
            if(Sensor_Drum == 0)
            {
                for (int counter=1; counter<=5; counter++){
                    DelayTime_1ms(1000);
                }
                Feeder_Rotate2();
                DelayTime_1ms(300);
                Feeder_Stop();
            }
            if((Sensor1 == 1) && (Busy == 0))
            {
                __delay_ms(50);
                if(Sensor1 == 1)
                {
                    Feeder_Stop();
                }
            }
        }
        

		if (SW1==1) //display counter reset button 1 = not press 0 = press
		{
			sw1counter=0;
			swcounterflag=0;
		}
		else 
        {
			if (swcounterflag==0)
			{
				sw1counter = swcount50ms;
				swcounterflag=1;
			}
			else if ((swcounterflag==1)&&(sw1counter==0))
			{
				number = 0;
			}
            
            error = off;
            warning = off;
            error1counter = error1Time;
            error2counter = error2Time;
            error3counter = error3Time;
            error4counter = error4Time;
            error5counter = error5Time;
            error6counter = error6Time;
			
		}
               
/*******************************************************************************
     Cap detection and Solenoid activation
********************************************************************************/       
        if(Sensor_Cap == 0 && Sensor3 == 1 && lifter == standby)
        {
            if(Sensor_Cap ==0)
            {
                C_MOTOR	= Cmotor_on; // turn on to pull ejected cap into position when solenoid turn on
                
                error3counter = error3Time;

                if(capin == 0)
                {
                    cap_success = 1;
                }

               if(cap_success==1)
                {
                    number++;
                    TotalNumL++;
                    digit=1;
                    cap_success=0;
                    capin = 2;
                    
                    if(TotalNumL > 9999)
                    {
                        TotalNumL = 0;
                        TotalNumH++;
                    }
                    
                    INTCONbits.GIE=0;
                    
                    TempNum = TotalNumL&0x00FF;
                    write_i2c(TotalNum_LowL, TempNum);                    
                    TempNum = (TotalNumL/0x100)&0x00FF;
                    write_i2c(TotalNum_LowH, TempNum);
                    
                    TempNum = TotalNumH&0x00FF;
                    write_i2c(TotalNum_HighL, TempNum);                    
                    TempNum = (TotalNumH/0x100)&0x00FF;
                    write_i2c(TotalNum_HighH, TempNum);
                    
                    INTCONbits.GIE=1;
                }

                do{
                    if(Sensor2 == 0)
                    {
                        Feeder_Rotate1();      
                    }
                    
                    if(Sensor_Drum == 0)
                    {
                        for (int counter=1; counter<=5; counter++){
                            DelayTime_1ms(1000);
                        }
                        Feeder_Rotate2();
                        DelayTime_1ms(300);
                        Feeder_Stop();
                    }
                    
                    if((Sensor1 == 1) && (Sensor2 ==1) && (Busy == 0))
                    {
                        __delay_ms(50);
                        if(Sensor1 == 1)
                        {
                            Feeder_Stop();
                        }
                    }
                    
                    if(error3counter <= 0)
                    {
                        warning = on;
                        warning_number = '3';
                    }
                    
                    C_MOTOR	= Cmotor_on;
                    
                    DelayTime_1ms(100);
                    
                    SO1 = Sol_on;//On                

                    DelayTime_10ms(sol_activation_on_time);

                    SO1 = Sol_off;                

                    DelayTime_10ms(sol_activation_off_time); 

                } while((Sensor_Cap == 0) && (Sensor3 == 1) &&(lifter == standby));

                if(Sensor_Cap == 1)
                {
                    capin = 1;
                    
                    if(warning_number == '3')
                    {
                        warning = off;
                        error3counter = error3Time;
                    }
                }

                C_MOTOR = Cmotor_off;
            }
        }
        else if(Sensor_Cap == 1 && lifter == standby)
        {
            capin = 1;
        }
        
/****************************************************************************
            process Serial command 
******************************************************************************/
        
        if(Serial_Flag == 1)
        {
            switch(Serial_Buffer[1])
            {
                case 0x44: //start command
                    if(Busy == 0)
                    {
                        Busy = 1;
                        if(Serial_Buffer[2]==0xF1)
                        {
                            Lifter_Use = 1;
                            start_capping = on;
                            if ((Sensor3) && (start_capping == on) && (error == off))
                            {          
                                C_MOTOR = Cmotor_on;                       
                            }
                        }
                        Busy = 0;
                    }
                    break;
                    
                case 0x64: //program solenoid activation ON time
                    if(Busy == 0)
                    {
                        Busy = 1;
                        sol_on_time = Serial_Buffer[2];
                        INTCONbits.GIE=0;
                        write_i2c(EEPROM_SolenoidPullTime,sol_on_time);
                        INTCONbits.GIE=1;
                        sol_activation_on_time = sol_on_time;
                        Serial_Buffer_Out[1] = sol_activation_on_time ;
                        Busy = 0;
                    }
                    break;
                    
                case 0x65: //program solenoid activation OFF time
                    if(Busy == 0)
                    {
                        Busy = 1;
                        sol_off_time = Serial_Buffer[2];
                        INTCONbits.GIE=0;
                        write_i2c(EEPROM_SolenoidReleaseTime,sol_off_time);
                        INTCONbits.GIE=1;
                        sol_activation_off_time = sol_off_time;
                        Serial_Buffer_Out[2] = sol_activation_off_time ;
                        Busy = 0;
                    }
                    break;
                    
                case 0x66: //program lift up hold time
                    if(Busy == 0)
                    {
                        Busy = 1;
                        lift_up_hold_time = Serial_Buffer[2];
                        INTCONbits.GIE=0;
                        write_i2c(EEPROM_LifterHoldTime,lift_up_hold_time);
                        INTCONbits.GIE=1;
                        LiftUpHoldCounter = lift_up_hold_time;
                        Serial_Buffer_Out[3] = LiftUpHoldCounter;
                        Busy = 0;
                    }
                    break;
                    
                case 0x67: //program lifter up position 
                    if(Busy == 0)
                    {
                        Busy = 1;
                        lifter_up_position = Serial_Buffer[2];
                        INTCONbits.GIE=0;
                        write_i2c(EEPROM_LifterUpPosition,lifter_up_position);
                        INTCONbits.GIE=1;
                        lifter_stop_delay_time = lifter_up_position;
                        Serial_Buffer_Out[4] = lifter_stop_delay_time;
                        Busy = 0;
                    }
                    break;
                    
                case 0x51: //querying data
                    if(Busy==0)
                    {
                        if (Serial_Buffer[2] == 0x00)
                        {                               
                            if(startup==1)
                            {
                                Busy = 1;
                                INTCONbits.GIE=0;
                                sol_on_time = read_i2c(EEPROM_SolenoidPullTime);
                                sol_off_time = read_i2c(EEPROM_SolenoidReleaseTime);
                                lift_up_hold_time = read_i2c(EEPROM_LifterHoldTime);
                                lifter_up_position = read_i2c(EEPROM_LifterUpPosition);
                                
                                Serial_Buffer_Out[0] = 0x51;
                                Serial_Buffer_Out[1] = sol_on_time;
                                Serial_Buffer_Out[2] = sol_off_time;
                                Serial_Buffer_Out[3] = lift_up_hold_time;
                                Serial_Buffer_Out[4] = lifter_up_position;
                                
                                DelayTime_1ms(100);
                                                           
                                for (i=0; i<5;i++)
                                {
                                    Write1USART(Serial_Buffer_Out[i]);
                                }
                                INTCONbits.GIE=1;
                            
                            }
                        }
                            flushOut();
                            Busy = 0;
                    }
                    break;
                    
                case 0x52: //query total capping cycle
                    if(Busy==0)
                    {
                        if (Serial_Buffer[2] == 0x00)
                        {                               
                            if(startup==1)
                            {
                                Busy = 1;
                                INTCONbits.GIE=0;
                                num1 = read_i2c(EEPROM_TotalNumLowL);
                                num2 = read_i2c(EEPROM_TotalNumLowH);
                                num3 = read_i2c(EEPROM_TotalNumHighL);
                                num4 = read_i2c(EEPROM_TotalNumHighH);
                                
                                Serial_Buffer_Out[0] = 0x52;
                                Serial_Buffer_Out[1] = num1;
                                Serial_Buffer_Out[2] = num2;
                                Serial_Buffer_Out[3] = num3;
                                Serial_Buffer_Out[4] = num4;
                                
                                DelayTime_1ms(100);
                                                           
                                for (i=0; i<5;i++)
                                {
                                    Write1USART(Serial_Buffer_Out[i]);
                                }
                                INTCONbits.GIE=1;
                            
                            }
                        }
                            flushOut();
                            Busy = 0;
                    }
                    
                    break;
                    
            }
            
            Serial_Flag = 0;
            Serial_GData = 0;
            OpMode = MANUAL_MODE;
        }
        else
        {
            OpMode = MANUAL_MODE;
        }
                
/****************************************************************************
            Lifter State Diagram
******************************************************************************/
    	if ((Lifter_Use == 1) && (lifter == standby) && (Busy == 0))
		{
            Busy = 1;
            
            if((SW_TOP)&&(!SW_BOT))
            {
                DelayTime_1ms(300);
                lifter = moveup;
                Lifter_Up();
                LiftUpTime = Lift_Up_Time;
                Lifter_Use = 0;
                error = off;
                warning = off;
                error1counter = error1Time;
                error2counter = error2Time;
                error3counter = error3Time;
                error4counter = error4Time;
                error5counter = error5Time;
                error6counter = error6Time;
            }
            
            else if(SW_BOT)
            {
                do
                {
                    error = on;
                    error_number = '5';
                }while(SW_BOT);
                
                error = off;
            }
                    
            
        }
		else if (lifter == moveup)
		{
            if(!SW_TOP)
            {
                LiftUpHoldCounter = lift_up_hold_time;
                lifter = stoptop;
                DelayTime_1ms(lifter_stop_delay_time);
                Lifter_Stop();
                error4counter = error4Time;
                
            }
            else if(SW_TOP)
            {                
                if(error4counter == 0)
                {
                    error = on;
                    error_number = '4';
                    error4counter = error4Time;
                }
            }
                               
		}
				
        else if ((lifter == stoptop) && (LiftUpHoldCounter==0))
		{
			lifter = movedown;
			Lifter_Down();
                    
            if(capin == 1)
            {
                capin = 0;
            }
                    
		}
		else if (lifter == movedown)
		{
     
            if(!SW_BOT)
            {
                lifter = standby;
                start_capping = off;
                Lifter_Stop();
                while (!LIFTSW)
                {
                    error = on;
                    error_number = '6';
                };      //if pushbutton not release
                
                error5counter = error5Time;
            }
            else
            {               
                if(SW_BOT && error5counter == 0)
                {                   
                        error = on;
                        error_number = '5';
                        lifter = standby;
                }
            }
        }
		else if (lifter == standby)
        {
			Lifter_Stop();
            LiftUpTime = Lift_Up_Time;
            Busy = 0;
            
            if(SW_BOT)
            {              
                    error = on;
                    error_number = '5';              
            }
            else if(!SW_TOP)
            {
                error = on;
                error_number = '4';
            }
        }
                
        //motor driver fault pin detection condition
        if ((lifter == moveup)||(lifter == movedown))
        {
            if(LMotor_nFault==0)
            {
                Lifter_Stop();
                
               if(lifter == moveup)         
                    Lifter_Up();
               else if(lifter == movedown)
                   Lifter_Down();
                                        
            }
        }
             
		if ((LiftUpTime == 0) && (lifter == moveup))
		{
            Lifter_Brake();
            Lifter_Down();
            lifter=movedown;		//reset the lifter
            LiftUpTime = Lift_Up_Time;
            error5counter = error5Time;
		}

    } //end for(;;)
}
//***********************End for(;;)******************************************//
    


/*******************************************************************************
            Interrupt function
*******************************************************************************/ 
void __interrupt() high_isr (void)
{
    unsigned char c, i;
	unsigned char Temp;
    
    // Timer 0 activated (100ms counter)
    if(TMR0IF_triggered==true)
    {      
        if(error == on)
        {
             Display_Error(error_number);
             C_MOTOR = Cmotor_off;
             Lifter_Stop();
             Feeder_Stop();
        }
        else if(warning == on && error==off)
        {
            Display_Warning(warning_number);
        }        
        else
        {
            ISR_UpdateDisplay();           
        }
        
        TMR0IF_triggered = false;       
        
    }
    
    if (TMR1IF_triggered == true) //100ms counter
		{
            if (LiftUpHoldCounter > 0)
				LiftUpHoldCounter--;
            else
                LiftUpHoldCounter = 0;
            
            if (LiftUpTime > 0)
                LiftUpTime--;
            else
            {
                LiftUpTime = 0;
            }
            
            if(error1counter >0)
            {
                error1counter--;
            }
            else 
            {
                error1counter = 0;
            }
            
            if(error2counter >0)
            {
                error2counter--;
            }
            else 
            {
                error2counter = 0;
            }
            
            if(error3counter >0)
            {
                error3counter--;
            }
            else 
            {
                error3counter = 0;
            }
            
            if(error4counter>0)
            {
                error4counter--;
            }
            else
            {
                error4counter = 0;
            }
            
            if(error5counter>0)
            {
                error5counter--;
            }
            else
            {
                error5counter = 0;
            }
            
            if(error6counter>0)
            {
                error6counter--;
            }
            else
            {
                error6counter = 0;
            }
                       
            if (sw1counter>0)
				sw1counter--;
            
            else
            {
                sw1counter = 0;
            }
            
            if (FeederRotate1Time>0)
				FeederRotate1Time--;
            
            else
            {
                FeederRotate1Time = 0;
            }
            
            if (FeederRotate2Time>0)
				FeederRotate2Time--;
            
            else
            {
                FeederRotate2Time = 0;
            }           
            
            TMR1IF_triggered = false;
            
		}
   
    
    if(TMR0IF)
    {
        TMR0 = 0xF9E4; //100ms timer0
        TMR0IF = 0;
        TMR0IF_triggered = true;
    }
    if(TMR1IF)
    { 
        TMR1 = 0x9E57; //100ms timer1
        TMR1IF = 0;
        TMR1IF_triggered = true;
    }    
    if(TMR2IF)
    {
        TMR2IF = 0;
        TMR2IF_triggered = true;
    }
    
    if (DataRdy1USART()) //USART Receive interrupt FLAG
	{
		//Get the character received from the USART
		c=Read1USART();
        
		if ((c == Serial_SOT) && ((Serial_Flag == 0)||(Busy == 1)))
		{
			Serial_GData = 1;
			Serial_Count = 0;
			Serial_Buffer[Serial_Count] = c;
            Serial_Count++;
		}
		else if (Serial_GData == 1)
		{           
			Serial_Buffer[Serial_Count] = c;
            
			if(Serial_Count<5)
            {
                if (c == Serial_EOT)
                {
                    Temp = Serial_Buffer[1] ^ Serial_Buffer[2];

                    if (Temp == Serial_Buffer[3])
                    {
                        if(Busy==0 || Serial_Buffer[2]==0xF5)
                        {
                            for (i=0; i<5; i++)
                            {
                                Write1USART(Serial_Buffer[i]);
                            }
                        }
                        else
                        {
                            for (i=0; i<5; i++)
                                Write1USART(CMD_BUSY);
                        }

                        Serial_Flag = 1;
                        Serial_Count = 0;
                        OpMode = AUTO_MODE;

                    }
                    else
                    {
                        Serial_Flag = 0;
                        Serial_Count = 0;
                        for (i=0; i<5; i++)
                            Write1USART(NAK);
                    }

                    if(Serial_Buffer[2]==0xF5 && OpMode == AUTO_MODE)
                    {
                        Stop = 1;
                    }
                }
            }
            else
            {
                Serial_GData = 0;
            }
            
            Serial_Count++;           
		}
	}
    else
    {
        if (RCSTA1bits.OERR == 1)
        {
            RCSTA1bits.OERR = 0; // clear overrun if it occurs
            RCSTA1bits.CREN = 0;
            RCSTA1bits.CREN = 1;
        }
    }
}

/*************************************************************************
update 7 segment when refresh interval is up or count is incremented after capping
**************************************************************************/ 
void ISR_UpdateDisplay(void)
{   
    if (number != Old_Number)   // means capping processed, save capping count to eeprom
    {
        switch (Edigit)
        {
            case 0:
                Temp = number&0x00FF;
                write_i2c(EAdd_Low, Temp);
                Edigit++;
                break;
            case 1:
                if (((number/0x100)&0x00FF) != read_i2c(EAdd_High)) {
                    Temp = (number/0x100)&0x00FF;
                    write_i2c(EAdd_High, Temp);
                }
                Old_Number = number;
                Edigit = 0;
                break;
            case 2:
                //write_i2c((EEPROM_DIndex/0x100)*0x00FF, EAdd_High);
                //Edigit++;
                //break;
            case 3:
                //write_i2c(EEPROM_DIndex*0x00FF, EAdd_Low);
                //UpDate_Index = 0;
            default:
                Edigit = 0;
                Old_Number = number;
                break;
        }
        units = 0x30+(number%10);
        tens = 0x30+((number%100)/10);
        hundreds =0x30+((number%1000)/100);
        thousands = 0x30+(number/1000);
    }
  
    // update the four 7=segment display 
    switch (digit) {
        case 1:
            displayno(digit,units);
            digit++;
            break;
        case 2:
            displayno(digit,tens);
            digit++;
            break;
        case 3:
            displayno(digit,hundreds);
            digit++;
            break;
        case 4:
            displayno(digit,thousands);
            digit=1;
            update_7seg = false;
            break;
        default:
            digit = 1;
            update_7seg = false;
            break;
    }        

}   // Segment Display

/*******************************************************************************
            Ports initialization
*******************************************************************************/ 
void init(void)
{
	PORTA=0;
/*	PORTB=0;
	PORTC=0;
	PORTD=0;
	PORTE=0;
	PORTF=0;
	PORTG=0;
*/
	LATA=0;
/*	LATB=0;
	LATC=0;
	LATD=0;
	LATE=0;
	LATF=0;
	LATG=0;
*/
	//init A/D converter
	ADCON0bits.VCFG1 = 0; // internal VDD as reference
	ADCON0bits.VCFG0 = 0; // internal VDD as reference

	ADCON1bits.ADFM = 1;  //  right justified
	ADCON1bits.ADCAL = 0; //  calibration disabled
	ADCON1bits.ACQT2 = 0; //
	ADCON1bits.ACQT1 = 1; //
	ADCON1bits.ACQT0 = 0; //
	ADCON1bits.ADCS2 = 1; //
	ADCON1bits.ADCS1 = 0; //
	ADCON1bits.ADCS0 = 0; //

	WDTCONbits.ADSHR = 1; // shared address access
	//CONFIG2Hbits.WDTPS3 = 1;
    //WDTCONbits.SWDTEN = 1;
	ANCON0bits.PCFG0 = 0; // AN0 analog port
	ANCON0bits.PCFG1 = 1; // RA1 digital port
	ANCON0bits.PCFG2 = 1; // RA2 digital port
	ANCON0bits.PCFG3 = 1; // RA3 digital port
	ANCON0bits.PCFG4 = 1; // RA5 digital port
//	ODCON1bits.CCP5OD = 0;
	WDTCONbits.ADSHR = 0;
	ADCON0bits.ADON=1;// ON adc
  
	//ADSHR=1;
	//ANCON0=0x1f;
	//ANCON1=0xff;
	//ADSHR=0;
	TRISA = PORTA_TRIS;
	TRISB = PORTB_TRIS;
	TRISC = PORTC_TRIS;
	TRISD = PORTD_TRIS;
	TRISE = PORTE_TRIS;
	TRISF = PORTF_TRIS;
	TRISG = PORTG_TRIS;

	C_MOTOR		= Cmotor_off;      // capping motor on/off
	CATH4		= low;
	CATH2		= low;
	CATH3		= low;
	CATH1		= low;
	SDA			= high;		// pull the line high
	SCL			= high;		// pull the line high
	SO1			= Sol_off;		// solenoid on/Off
    I01         = low;      // lifter motor direction control PortF bit 7
    I11         = low;      // lifter motor direction control PortF bit 6

}

/*******************************************************************************
                Delay Function
*******************************************************************************/
void DelayTime_1ms(unsigned short int time)
{
    while(time > 0)
   {
       __delay_ms(1);
      time--;
    }

}

void DelayTime_10ms(unsigned short int time)
{
    while(time > 0)
   {
       __delay_ms(10);
      time--;
    }

}

/*******************************************************************************
            Lifter initialization
*******************************************************************************/
void Lifter_Init(void)
{
	//edigit = 1;
	if (SW_BOT) //if lifter bottom led off
	{
		if(SW_BOT)
		{
			Lifter_Down(); //move lifter down
            error_number = '5';
            error = on;
		}
	}
    else
    {
        lifter=standby;
        Lifter_Stop();//stop the lifter motor
    }
}

/*******************************************************************************
                Lifter Motor Control Function
*******************************************************************************/
void Lifter_Stop ()
{
    I01 = 1;	//0;
    I11 = 1;	//0;
}

//up turning direction
void Lifter_Up()
{
    I01 = 1;
    I11 = 0;
}

//down turning direction
void Lifter_Down()
{
    I01 = 0;
    I11 = 1;
} 

void Lifter_Brake ()
{
    I01 = 1;
    I11 = 1;
}

/*******************************************************************************
            Feeder Motor Control Function
*******************************************************************************/
void Feeder_Stop ()
{
    FMotor_IN1 = 1;	
    FMotor_IN2 = 1;	
}

void Feeder_Rotate1()
{
    FMotor_IN1 = 0;
    FMotor_IN2 = 1;
}

void Feeder_Rotate2()
{
    FMotor_IN1 = 1;
    FMotor_IN2 = 0;
} 

void Feeder_Brake ()
{
    FMotor_IN1 = 1;
    FMotor_IN2 = 1;
}

/*******************************************************************************
            Cap Feeding Function
*******************************************************************************/
void CapFillingStart (void)
{
    if(FeederRotate1 == on && FeederRotate2 == off)
    {
        if(FeederRotate1Time == 0)
        {
            Feeder_Stop();
            Feeder_Rotate2();
            FeederRotate2 = on;
            FeederRotate1 == off;
        }
        else
        {
            Feeder_Rotate1();
        }
    }
    else if(FeederRotate2 == on)
    {
        if(FeederRotate2Time == 0)
        {
            Feeder_Stop();
            Feeder_Rotate1();
            FeederRotate1 = on;
            FeederRotate2 = off;
        }
        else
        {
            Feeder_Rotate2();
        }
    }
    else
    {
        FeederRotate1 = off;
        FeederRotate2 = off;
        FeederRotate1Time = Rotate1_Time;
        FeederRotate2Time = Rotate2_Time;               
    }
    
    if(FMotor_nFault==0)
    {
        Feeder_Stop();
        
        if(FeederRotate1 == on && FeederRotate2 == off)
        {
            Feeder_Rotate1();
        }
        else if(FeederRotate2 == off)
        {
            Feeder_Rotate2();
        }                                                   
    }
}

/*******************************************************************************
            Timer Interrupt initialization
*******************************************************************************/
//TMR0 = 65535 - ((time(0.1s) * Fosc(8MHZ))/(4*prescaler))
//********100ms******************
void InitTimer0(void)
{
  	T0CON   = 0b11000110;	//0xC3; //prescaler is 128
  	//TMR0L	= T0_Value;		//InitTimer2ms
    TMR0 = 0xF9E4; //100ms
    //SETUP INT interrupt registers
  	//GIE		= 1;
  	INTCONbits.TMR0IE	= 1;
  	INTCONbits.TMR0IF 	= 0;	
    TMR0IF_triggered = false;
}

//**********100ms********************
void InitTimer1(void)
{
	T1CON	= 0b00110001;   //prescaler is 8 default is 4tmr
	//TMR1H	= T1_ValueH;	//
	//TMR1L	= T1_ValueL;	//
    TMR1 = 0x9E57; //100ms
	TMR1IF	= 0;	
	TMR1IE	= 1;
    IPR1bits.TMR1IP=1;
    
    TMR1IF_triggered = false;
}

//***********10ms*********************
void InitTimer2(void)
{
  	T2CON	= 0b00101010;	//timer2 off;  prescaler is 16 postscaler is 1:5
  	PR2		= 0xFF;         //240 (0xF0); Period register		
	TMR2IF	= 0;
    TMR2IE	= 0;
    IPR1bits.TMR2IP=1;

    TMR2IF_triggered = false;
}

/****************************************************************************
Function:		Flush serial in buffer
******************************************************************************/
void flush(void)
{
    int i;
    
    for(i=0; i<16; i++)
    {
        Serial_Buffer[i]=0x00;
    }
}

/****************************************************************************
Function:		Flush serial out buffer
******************************************************************************/
void flushOut(void)
{
    int i;
    
    for(i=0; i<16; i++)
    {
        Serial_Buffer_Out[i]=0x00;
    }
}
