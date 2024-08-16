/*
 * File:   7segment.c
 * Author: SYSTEM
 *
 * Created on February 28, 2020, 9:23 AM
 */


#include <xc.h>
#include "io.h"
#include "main.h"

void DelayTime_1ms(unsigned short int time);
void DelayTime_10ms(unsigned short int time);

/*******************************************************************************
            7 Segments Display Function
*******************************************************************************/
void displayinit(void)
{
	CATH4	= high;
	CATH2	= high;
	CATH3	= high;
	CATH1	= high;
	SEGC	= high;
	SEGG	= high;
	SEG_DOT	= high;
	SEGD	= high;
	SEGE	= high;
	SEGB	= high;
	SEGA	= high;
	SEGF	= high;
}

//            --- a ---
//           /         /
//          f         b
//         /         /
//         --- g ---
//       /         /
//      e         c
//     /         /
//     --- d ---    h 	

void displayno(int digit, int number)
{
	switch (digit)
	{
		case 1:
			CATH1	= low;
			CATH2	= high;
			CATH3	= high;
			CATH4	= high;
			break;

		case 2:
			CATH1	= high;
			CATH2	= high;
			CATH3	= low;
			CATH4	= high;
			break;

		case 3:
			CATH1	= high;
			CATH2	= low;
			CATH3	= high;
			CATH4	= high;
			break;

		case 4:
			CATH1	= high;
			CATH2	= high;
			CATH3	= high;
			CATH4	= low;
			break;
	}

	switch (number)
	{
		case 0x30:
			SEGA=off;	SEGB=off;
			SEGC=off;	SEGD=off;
			SEGE=off;	SEGF=off;
			SEGG=on;	SEG_DOT = on;
			break;

		case 0x31:
			SEGA=on;	SEGB=off;
			SEGC=off;	SEGD=on;
			SEGE=on;	SEGF=on;
			SEGG=on;	SEG_DOT = on;
			break;

		case 0x32:
			SEGA=off;	SEGB=off;
			SEGC=on;	SEGD=off;
			SEGE=off;	SEGF=on;
			SEGG=off;	SEG_DOT = on;
			break;

		case 0x33:
			SEGA=off;	SEGB=off;
			SEGC=off;	SEGD=off;
			SEGE=on;	SEGF=on;
			SEGG=off;	SEG_DOT = on;
			break;

		case 0x34:
			SEGA=on;	SEGB=off;
			SEGC=off;	SEGD=on;
			SEGE=on;	SEGF=off;
			SEGG=off;	SEG_DOT = on;
			break;

		case 0x35:
			SEGA=off;	SEGB=on;
			SEGC=off;	SEGD=off;
			SEGE=on;	SEGF=off;
			SEGG=off;	SEG_DOT = on;
			break;

		case 0x36:
			SEGA=off;	SEGB=on;
			SEGC=off;	SEGD=off;
			SEGE=off;	SEGF=off;
			SEGG=off;	SEG_DOT = on;
			break;

		case 0x37:
			SEGA=off;	SEGB=off;
			SEGC=off;	SEGD=on;
			SEGE=on;	SEGF=on;
			SEGG=on;	SEG_DOT = on;
			break;

		case 0x38:
			SEGA=off;	SEGB=off;
			SEGC=off;	SEGD=off;
			SEGE=off;	SEGF=off;
			SEGG=off;	SEG_DOT = on;
			break;

		case 0x39:
			SEGA=off;	SEGB=off;
			SEGC=off;	SEGD=on;
			SEGE=on;	SEGF=off;
			SEGG=off;	SEG_DOT = on;
			break;

		case 0x4C:	//'L'
			SEGA=on;	SEGB=on;
			SEGC=on;	SEGD=off;
			SEGE=off;	SEGF=off;
			SEGG=on;	SEG_DOT = on;
			break;

		case 0x45: //'E'
			SEGA=off;	SEGB=on;
			SEGC=on;	SEGD=off;
			SEGE=off;	SEGF=off;
			SEGG=off;	SEG_DOT = on;
			break;

		case 0x2D: //'-'
			SEGA=on;	SEGB=on;
			SEGC=on;	SEGD=on;
			SEGE=on;	SEGF=on;
			SEGG=off;	SEG_DOT = on;
			break;

		case 0x20:
		default:
			SEGA=on;	SEGB=on;
			SEGC=on;	SEGD=on;
			SEGE=on;	SEGF=on;
			SEGG=on;	SEG_DOT = on;
			break;
        
        //display version number    
        case 0x50: //'U'
            SEGA=on;	SEGB=off;
			SEGC=off;	SEGD=off;
			SEGE=off;	SEGF=off;
			SEGG=on;	SEG_DOT = on;
			break;
            
        case 0x51: //'2.'
            SEGA=off;	SEGB=off;
			SEGC=on;	SEGD=off;
			SEGE=off;	SEGF=on;
			SEGG=off;	SEG_DOT = off;
			break;
            
	}
}

void Display_Error(int enumber)
{

        switch (edigit) {
            case 1:
                displayno(edigit, 0x20);
                edigit++;
                break;
            case 2:
                displayno(edigit, enumber);
                edigit++;
                break;
            case 3:
                displayno(edigit, 0x45);
                edigit++;
                break;
            case 4:
                displayno(edigit, 0x20);
                edigit++;           
                break;
            default:
                edigit = 1;
                break;
        }
    
}

void Display_Warning(int enumber)
{
   
        switch (edigit) {
            case 1:
                displayno(edigit, 0x20);
                edigit++;
                break;
            case 2:
                displayno(edigit, enumber);
                edigit++;
                break;
            case 3:
                displayno(edigit, 0x4C);
                edigit++;
                break;
            case 4:
                displayno(edigit, 0x20);
                edigit++;           
                break;
            default:
                edigit = 1;
                break;
	}
    
}

void Display_Version()
{
	unsigned int delay=5;
    int cdigit=1;
    int loop;
    int repeat;
    
    for (repeat=0; repeat<50; repeat++) {
        for(loop=0; loop<REFRESH_INTERVAL; loop++)
        {
            while(cdigit < 5){        

                switch (cdigit) {
                    case 1:
                        displayno(cdigit, 0x20);
                        cdigit++;
                        break;
                    case 2:
                        displayno(cdigit, (Version%10)+0x30);//second digit
                        cdigit++;
                        break;
                    case 3:
                        //displayno(cdigit, (Version/10)+0x30);
                        displayno(cdigit, 0x51);
                        cdigit++;
                        break;
                    case 4:
                        if (LIFTSW)
                            displayno(cdigit, 0x50); //0x4c
                        else
                            displayno(cdigit, 0x20);
                        cdigit++;
                        break;
                    default:
                        cdigit = 1;
                        break;
                }
            
                DelayTime_1ms(delay);
            }// end while
        }
        cdigit = 1;       
    }
}
