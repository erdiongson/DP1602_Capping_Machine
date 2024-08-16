
# 1 "i2c.c"

# 18 "C:\Program Files\Microchip\xc8\v2.40\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "C:\Program Files\Microchip\xc8\v2.40\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 13 "C:\Program Files\Microchip\xc8\v2.40\pic\include\c90\stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 28
typedef __int24 int24_t;

# 36
typedef signed long int int32_t;

# 52
typedef unsigned char uint8_t;

# 58
typedef unsigned int uint16_t;

# 65
typedef __uint24 uint24_t;

# 72
typedef unsigned long int uint32_t;

# 88
typedef signed char int_least8_t;

# 96
typedef signed int int_least16_t;

# 109
typedef __int24 int_least24_t;

# 118
typedef signed long int int_least32_t;

# 136
typedef unsigned char uint_least8_t;

# 143
typedef unsigned int uint_least16_t;

# 154
typedef __uint24 uint_least24_t;

# 162
typedef unsigned long int uint_least32_t;

# 181
typedef signed char int_fast8_t;

# 188
typedef signed int int_fast16_t;

# 200
typedef __int24 int_fast24_t;

# 208
typedef signed long int int_fast32_t;

# 224
typedef unsigned char uint_fast8_t;

# 230
typedef unsigned int uint_fast16_t;

# 240
typedef __uint24 uint_fast24_t;

# 247
typedef unsigned long int uint_fast32_t;

# 268
typedef int32_t intmax_t;

# 282
typedef uint32_t uintmax_t;

# 289
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;


# 7 "C:\Program Files\Microchip\xc8\v2.40\pic\include\builtins.h"
#pragma intrinsic(__nop)
extern void __nop(void);


#pragma intrinsic(_delay)
extern __nonreentrant void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(uint8_t);

# 53 "C:\Program Files\Microchip\xc8\v2.40\pic\include\proc\pic18f65j50.h"
extern volatile unsigned short PMSTAT __at(0xF40);

asm("PMSTAT equ 0F40h");




extern volatile unsigned char PMSTATL __at(0xF40);

asm("PMSTATL equ 0F40h");


typedef union {
struct {
unsigned OB0E :1;
unsigned OB1E :1;
unsigned OB2E :1;
unsigned OB3E :1;
unsigned :2;
unsigned OBUF :1;
unsigned OBE :1;
};
} PMSTATLbits_t;
extern volatile PMSTATLbits_t PMSTATLbits __at(0xF40);

# 111
extern volatile unsigned char PMSTATH __at(0xF41);

asm("PMSTATH equ 0F41h");


typedef union {
struct {
unsigned IB0F :1;
unsigned IB1F :1;
unsigned IB2F :1;
unsigned IB3F :1;
unsigned :2;
unsigned IBOV :1;
unsigned IBF :1;
};
} PMSTATHbits_t;
extern volatile PMSTATHbits_t PMSTATHbits __at(0xF41);

# 162
extern volatile unsigned short PMEN __at(0xF42);

asm("PMEN equ 0F42h");




extern volatile unsigned char PMEL __at(0xF42);

asm("PMEL equ 0F42h");


typedef union {
struct {
unsigned PTENL :8;
};
struct {
unsigned PTEN0 :1;
unsigned PTEN1 :1;
unsigned PTEN2 :1;
unsigned PTEN3 :1;
unsigned PTEN4 :1;
unsigned PTEN5 :1;
unsigned PTEN6 :1;
unsigned PTEN7 :1;
};
} PMELbits_t;
extern volatile PMELbits_t PMELbits __at(0xF42);

# 239
extern volatile unsigned char PMEH __at(0xF43);

asm("PMEH equ 0F43h");


typedef union {
struct {
unsigned PTENH :8;
};
struct {
unsigned PTEN8 :1;
unsigned PTEN9 :1;
unsigned PTEN10 :1;
unsigned PTEN11 :1;
unsigned PTEN12 :1;
unsigned PTEN13 :1;
unsigned PTEN14 :1;
unsigned PTEN15 :1;
};
} PMEHbits_t;
extern volatile PMEHbits_t PMEHbits __at(0xF43);

# 309
extern volatile unsigned short PMDIN2 __at(0xF44);

asm("PMDIN2 equ 0F44h");




extern volatile unsigned char PMDIN2L __at(0xF44);

asm("PMDIN2L equ 0F44h");




extern volatile unsigned char PMDIN2H __at(0xF45);

asm("PMDIN2H equ 0F45h");




extern volatile unsigned short PMDOUT2 __at(0xF46);

asm("PMDOUT2 equ 0F46h");




extern volatile unsigned char PMDOUT2L __at(0xF46);

asm("PMDOUT2L equ 0F46h");




extern volatile unsigned char PMDOUT2H __at(0xF47);

asm("PMDOUT2H equ 0F47h");




extern volatile unsigned short PMMODE __at(0xF48);

asm("PMMODE equ 0F48h");




extern volatile unsigned char PMMODEL __at(0xF48);

asm("PMMODEL equ 0F48h");


typedef union {
struct {
unsigned WAITE :2;
unsigned WAITM :4;
unsigned WAITB :2;
};
struct {
unsigned WAITE0 :1;
unsigned WAITE1 :1;
unsigned WAITM0 :1;
unsigned WAITM1 :1;
unsigned WAITM2 :1;
unsigned WAITM3 :1;
unsigned WAITB0 :1;
unsigned WAITB1 :1;
};
} PMMODELbits_t;
extern volatile PMMODELbits_t PMMODELbits __at(0xF48);

# 440
extern volatile unsigned char PMMODEH __at(0xF49);

asm("PMMODEH equ 0F49h");


typedef union {
struct {
unsigned MODE :2;
unsigned MODE16 :1;
unsigned INCM :2;
unsigned IRQM :2;
unsigned BUSY :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned :1;
unsigned INCM0 :1;
unsigned INCM1 :1;
unsigned IRQM0 :1;
unsigned IRQM1 :1;
};
} PMMODEHbits_t;
extern volatile PMMODEHbits_t PMMODEHbits __at(0xF49);

# 523
extern volatile unsigned short PMCON __at(0xF4A);

asm("PMCON equ 0F4Ah");




extern volatile unsigned char PMCONL __at(0xF4A);

asm("PMCONL equ 0F4Ah");


typedef union {
struct {
unsigned RDSP :1;
unsigned WRSP :1;
unsigned BEP :1;
unsigned CS1P :1;
unsigned CS2P :1;
unsigned ALP :1;
unsigned CSF0 :1;
unsigned CSF1 :1;
};
} PMCONLbits_t;
extern volatile PMCONLbits_t PMCONLbits __at(0xF4A);

# 592
extern volatile unsigned char PMCONH __at(0xF4B);

asm("PMCONH equ 0F4Bh");


typedef union {
struct {
unsigned PTRDEN :1;
unsigned PTWREN :1;
unsigned PTBEEN :1;
unsigned ADRMUX0 :1;
unsigned ADRMUX1 :1;
unsigned PSIDL :1;
unsigned :1;
unsigned PMPEN :1;
};
} PMCONHbits_t;
extern volatile PMCONHbits_t PMCONHbits __at(0xF4B);

# 649
extern volatile unsigned char UEP0 __at(0xF4C);

asm("UEP0 equ 0F4Ch");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP0STALL :1;
unsigned EP0INEN :1;
unsigned EP0OUTEN :1;
unsigned EP0CONDIS :1;
unsigned EP0HSHK :1;
};
struct {
unsigned EPSTALL0 :1;
unsigned EPINEN0 :1;
unsigned EPOUTEN0 :1;
unsigned EPCONDIS0 :1;
unsigned EPHSHK0 :1;
};
} UEP0bits_t;
extern volatile UEP0bits_t UEP0bits __at(0xF4C);

# 757
extern volatile unsigned char UEP1 __at(0xF4D);

asm("UEP1 equ 0F4Dh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP1STALL :1;
unsigned EP1INEN :1;
unsigned EP1OUTEN :1;
unsigned EP1CONDIS :1;
unsigned EP1HSHK :1;
};
struct {
unsigned EPSTALL1 :1;
unsigned EPINEN1 :1;
unsigned EPOUTEN1 :1;
unsigned EPCONDIS1 :1;
unsigned EPHSHK1 :1;
};
} UEP1bits_t;
extern volatile UEP1bits_t UEP1bits __at(0xF4D);

# 865
extern volatile unsigned char UEP2 __at(0xF4E);

asm("UEP2 equ 0F4Eh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP2STALL :1;
unsigned EP2INEN :1;
unsigned EP2OUTEN :1;
unsigned EP2CONDIS :1;
unsigned EP2HSHK :1;
};
struct {
unsigned EPSTALL2 :1;
unsigned EPINEN2 :1;
unsigned EPOUTEN2 :1;
unsigned EPCONDIS2 :1;
unsigned EPHSHK2 :1;
};
} UEP2bits_t;
extern volatile UEP2bits_t UEP2bits __at(0xF4E);

# 973
extern volatile unsigned char UEP3 __at(0xF4F);

asm("UEP3 equ 0F4Fh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP3STALL :1;
unsigned EP3INEN :1;
unsigned EP3OUTEN :1;
unsigned EP3CONDIS :1;
unsigned EP3HSHK :1;
};
struct {
unsigned EPSTALL3 :1;
unsigned EPINEN3 :1;
unsigned EPOUTEN3 :1;
unsigned EPCONDIS3 :1;
unsigned EPHSHK3 :1;
};
} UEP3bits_t;
extern volatile UEP3bits_t UEP3bits __at(0xF4F);

# 1081
extern volatile unsigned char UEP4 __at(0xF50);

asm("UEP4 equ 0F50h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP4STALL :1;
unsigned EP4INEN :1;
unsigned EP4OUTEN :1;
unsigned EP4CONDIS :1;
unsigned EP4HSHK :1;
};
struct {
unsigned EPSTALL4 :1;
unsigned EPINEN4 :1;
unsigned EPOUTEN4 :1;
unsigned EPCONDIS4 :1;
unsigned EPHSHK4 :1;
};
} UEP4bits_t;
extern volatile UEP4bits_t UEP4bits __at(0xF50);

# 1189
extern volatile unsigned char UEP5 __at(0xF51);

asm("UEP5 equ 0F51h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP5STALL :1;
unsigned EP5INEN :1;
unsigned EP5OUTEN :1;
unsigned EP5CONDIS :1;
unsigned EP5HSHK :1;
};
struct {
unsigned EPSTALL5 :1;
unsigned EPINEN5 :1;
unsigned EPOUTEN5 :1;
unsigned EPCONDIS5 :1;
unsigned EPHSHK5 :1;
};
} UEP5bits_t;
extern volatile UEP5bits_t UEP5bits __at(0xF51);

# 1297
extern volatile unsigned char UEP6 __at(0xF52);

asm("UEP6 equ 0F52h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP6STALL :1;
unsigned EP6INEN :1;
unsigned EP6OUTEN :1;
unsigned EP6CONDIS :1;
unsigned EP6HSHK :1;
};
struct {
unsigned EPSTALL6 :1;
unsigned EPINEN6 :1;
unsigned EPOUTEN6 :1;
unsigned EPCONDIS6 :1;
unsigned EPHSHK6 :1;
};
} UEP6bits_t;
extern volatile UEP6bits_t UEP6bits __at(0xF52);

# 1405
extern volatile unsigned char UEP7 __at(0xF53);

asm("UEP7 equ 0F53h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP7STALL :1;
unsigned EP7INEN :1;
unsigned EP7OUTEN :1;
unsigned EP7CONDIS :1;
unsigned EP7HSHK :1;
};
struct {
unsigned EPSTALL7 :1;
unsigned EPINEN7 :1;
unsigned EPOUTEN7 :1;
unsigned EPCONDIS7 :1;
unsigned EPHSHK7 :1;
};
} UEP7bits_t;
extern volatile UEP7bits_t UEP7bits __at(0xF53);

# 1513
extern volatile unsigned char UEP8 __at(0xF54);

asm("UEP8 equ 0F54h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL8 :1;
unsigned EPINEN8 :1;
unsigned EPOUTEN8 :1;
unsigned EPCONDIS8 :1;
unsigned EPHSHK8 :1;
};
} UEP8bits_t;
extern volatile UEP8bits_t UEP8bits __at(0xF54);

# 1589
extern volatile unsigned char UEP9 __at(0xF55);

asm("UEP9 equ 0F55h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL9 :1;
unsigned EPINEN9 :1;
unsigned EPOUTEN9 :1;
unsigned EPCONDIS9 :1;
unsigned EPHSHK9 :1;
};
} UEP9bits_t;
extern volatile UEP9bits_t UEP9bits __at(0xF55);

# 1665
extern volatile unsigned char UEP10 __at(0xF56);

asm("UEP10 equ 0F56h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL10 :1;
unsigned EPINEN10 :1;
unsigned EPOUTEN10 :1;
unsigned EPCONDIS10 :1;
unsigned EPHSHK10 :1;
};
} UEP10bits_t;
extern volatile UEP10bits_t UEP10bits __at(0xF56);

# 1741
extern volatile unsigned char UEP11 __at(0xF57);

asm("UEP11 equ 0F57h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL11 :1;
unsigned EPINEN11 :1;
unsigned EPOUTEN11 :1;
unsigned EPCONDIS11 :1;
unsigned EPHSHK11 :1;
};
} UEP11bits_t;
extern volatile UEP11bits_t UEP11bits __at(0xF57);

# 1817
extern volatile unsigned char UEP12 __at(0xF58);

asm("UEP12 equ 0F58h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL12 :1;
unsigned EPINEN12 :1;
unsigned EPOUTEN12 :1;
unsigned EPCONDIS12 :1;
unsigned EPHSHK12 :1;
};
} UEP12bits_t;
extern volatile UEP12bits_t UEP12bits __at(0xF58);

# 1893
extern volatile unsigned char UEP13 __at(0xF59);

asm("UEP13 equ 0F59h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL13 :1;
unsigned EPINEN13 :1;
unsigned EPOUTEN13 :1;
unsigned EPCONDIS13 :1;
unsigned EPHSHK13 :1;
};
} UEP13bits_t;
extern volatile UEP13bits_t UEP13bits __at(0xF59);

# 1969
extern volatile unsigned char UEP14 __at(0xF5A);

asm("UEP14 equ 0F5Ah");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL14 :1;
unsigned EPINEN14 :1;
unsigned EPOUTEN14 :1;
unsigned EPCONDIS14 :1;
unsigned EPHSHK14 :1;
};
} UEP14bits_t;
extern volatile UEP14bits_t UEP14bits __at(0xF5A);

# 2045
extern volatile unsigned char UEP15 __at(0xF5B);

asm("UEP15 equ 0F5Bh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL15 :1;
unsigned EPINEN15 :1;
unsigned EPOUTEN15 :1;
unsigned EPCONDIS15 :1;
unsigned EPHSHK15 :1;
};
} UEP15bits_t;
extern volatile UEP15bits_t UEP15bits __at(0xF5B);

# 2121
extern volatile unsigned char UIE __at(0xF5C);

asm("UIE equ 0F5Ch");


typedef union {
struct {
unsigned URSTIE :1;
unsigned UERRIE :1;
unsigned ACTVIE :1;
unsigned TRNIE :1;
unsigned IDLEIE :1;
unsigned STALLIE :1;
unsigned SOFIE :1;
};
} UIEbits_t;
extern volatile UIEbits_t UIEbits __at(0xF5C);

# 2177
extern volatile unsigned char UEIE __at(0xF5D);

asm("UEIE equ 0F5Dh");


typedef union {
struct {
unsigned PIDEE :1;
unsigned CRC5EE :1;
unsigned CRC16EE :1;
unsigned DFN8EE :1;
unsigned BTOEE :1;
unsigned :2;
unsigned BTSEE :1;
};
} UEIEbits_t;
extern volatile UEIEbits_t UEIEbits __at(0xF5D);

# 2228
extern volatile unsigned char UADDR __at(0xF5E);

asm("UADDR equ 0F5Eh");


typedef union {
struct {
unsigned ADDR :7;
};
struct {
unsigned ADDR0 :1;
unsigned ADDR1 :1;
unsigned ADDR2 :1;
unsigned ADDR3 :1;
unsigned ADDR4 :1;
unsigned ADDR5 :1;
unsigned ADDR6 :1;
};
} UADDRbits_t;
extern volatile UADDRbits_t UADDRbits __at(0xF5E);

# 2292
extern volatile unsigned char UCFG __at(0xF5F);

asm("UCFG equ 0F5Fh");


typedef union {
struct {
unsigned PPB :2;
unsigned FSEN :1;
unsigned UTRDIS :1;
unsigned UPUEN :1;
unsigned :1;
unsigned UOEMON :1;
unsigned UTEYE :1;
};
struct {
unsigned PPB0 :1;
unsigned PPB1 :1;
};
struct {
unsigned UPP0 :1;
unsigned UPP1 :1;
};
} UCFGbits_t;
extern volatile UCFGbits_t UCFGbits __at(0xF5F);

# 2371
extern volatile unsigned short UFRM __at(0xF60);

asm("UFRM equ 0F60h");




extern volatile unsigned char UFRML __at(0xF60);

asm("UFRML equ 0F60h");


typedef union {
struct {
unsigned FRM :8;
};
struct {
unsigned FRM0 :1;
unsigned FRM1 :1;
unsigned FRM2 :1;
unsigned FRM3 :1;
unsigned FRM4 :1;
unsigned FRM5 :1;
unsigned FRM6 :1;
unsigned FRM7 :1;
};
struct {
unsigned FRML :8;
};
} UFRMLbits_t;
extern volatile UFRMLbits_t UFRMLbits __at(0xF60);

# 2456
extern volatile unsigned char UFRMH __at(0xF61);

asm("UFRMH equ 0F61h");


typedef union {
struct {
unsigned FRM :3;
};
struct {
unsigned FRM8 :1;
unsigned FRM9 :1;
unsigned FRM10 :1;
};
} UFRMHbits_t;
extern volatile UFRMHbits_t UFRMHbits __at(0xF61);

# 2496
extern volatile unsigned char UIR __at(0xF62);

asm("UIR equ 0F62h");


typedef union {
struct {
unsigned URSTIF :1;
unsigned UERRIF :1;
unsigned ACTVIF :1;
unsigned TRNIF :1;
unsigned IDLEIF :1;
unsigned STALLIF :1;
unsigned SOFIF :1;
};
} UIRbits_t;
extern volatile UIRbits_t UIRbits __at(0xF62);

# 2552
extern volatile unsigned char UEIR __at(0xF63);

asm("UEIR equ 0F63h");


typedef union {
struct {
unsigned PIDEF :1;
unsigned CRC5EF :1;
unsigned CRC16EF :1;
unsigned DFN8EF :1;
unsigned BTOEF :1;
unsigned :2;
unsigned BTSEF :1;
};
} UEIRbits_t;
extern volatile UEIRbits_t UEIRbits __at(0xF63);

# 2603
extern volatile unsigned char USTAT __at(0xF64);

asm("USTAT equ 0F64h");


typedef union {
struct {
unsigned :1;
unsigned PPBI :1;
unsigned DIR :1;
unsigned ENDP :4;
};
struct {
unsigned :3;
unsigned ENDP0 :1;
unsigned ENDP1 :1;
unsigned ENDP2 :1;
unsigned ENDP3 :1;
};
} USTATbits_t;
extern volatile USTATbits_t USTATbits __at(0xF64);

# 2663
extern volatile unsigned char UCON __at(0xF65);

asm("UCON equ 0F65h");


typedef union {
struct {
unsigned :1;
unsigned SUSPND :1;
unsigned RESUME :1;
unsigned USBEN :1;
unsigned PKTDIS :1;
unsigned SE0 :1;
unsigned PPBRST :1;
};
} UCONbits_t;
extern volatile UCONbits_t UCONbits __at(0xF65);

# 2714
extern volatile unsigned short PMDIN1 __at(0xF66);

asm("PMDIN1 equ 0F66h");




extern volatile unsigned char PMDIN1L __at(0xF66);

asm("PMDIN1L equ 0F66h");




extern volatile unsigned char PMDIN1H __at(0xF67);

asm("PMDIN1H equ 0F67h");




extern volatile unsigned short PMADDR __at(0xF68);

asm("PMADDR equ 0F68h");


extern volatile unsigned short PMDOUT1 __at(0xF68);

asm("PMDOUT1 equ 0F68h");




extern volatile unsigned char PMADDRL __at(0xF68);

asm("PMADDRL equ 0F68h");




extern volatile unsigned char PMDOUT1L __at(0xF68);

asm("PMDOUT1L equ 0F68h");




extern volatile unsigned char PMADDRH __at(0xF69);

asm("PMADDRH equ 0F69h");


typedef union {
struct {
unsigned ADDRH :6;
unsigned CS1 :1;
unsigned CS2 :1;
};
} PMADDRHbits_t;
extern volatile PMADDRHbits_t PMADDRHbits __at(0xF69);

# 2793
extern volatile unsigned char PMDOUT1H __at(0xF69);

asm("PMDOUT1H equ 0F69h");




extern volatile unsigned char CMSTAT __at(0xF6A);

asm("CMSTAT equ 0F6Ah");


extern volatile unsigned char CMSTATUS __at(0xF6A);

asm("CMSTATUS equ 0F6Ah");


typedef union {
struct {
unsigned COUT1 :1;
unsigned COUT2 :1;
};
} CMSTATbits_t;
extern volatile CMSTATbits_t CMSTATbits __at(0xF6A);

# 2829
typedef union {
struct {
unsigned COUT1 :1;
unsigned COUT2 :1;
};
} CMSTATUSbits_t;
extern volatile CMSTATUSbits_t CMSTATUSbits __at(0xF6A);

# 2850
extern volatile unsigned char SSP2CON2 __at(0xF6B);

asm("SSP2CON2 equ 0F6Bh");


typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
struct {
unsigned :1;
unsigned ADMSK1 :1;
unsigned ADMSK2 :1;
unsigned ADMSK3 :1;
unsigned ADMSK4 :1;
unsigned ADMSK5 :1;
};
struct {
unsigned SEN2 :1;
unsigned ADMSK12 :1;
unsigned ADMSK22 :1;
unsigned ADMSK32 :1;
unsigned ACKEN2 :1;
unsigned ACKDT2 :1;
unsigned ACKSTAT2 :1;
unsigned GCEN2 :1;
};
struct {
unsigned :1;
unsigned RSEN2 :1;
unsigned PEN2 :1;
unsigned RCEN2 :1;
unsigned ADMSK42 :1;
unsigned ADMSK52 :1;
};
} SSP2CON2bits_t;
extern volatile SSP2CON2bits_t SSP2CON2bits __at(0xF6B);

# 3028
extern volatile unsigned char SSP2CON1 __at(0xF6C);

asm("SSP2CON1 equ 0F6Ch");


typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
struct {
unsigned SSPM02 :1;
unsigned SSPM12 :1;
unsigned SSPM22 :1;
unsigned SSPM32 :1;
unsigned CKP2 :1;
unsigned SSPEN2 :1;
unsigned SSPOV2 :1;
unsigned WCOL2 :1;
};
} SSP2CON1bits_t;
extern volatile SSP2CON1bits_t SSP2CON1bits __at(0xF6C);

# 3148
extern volatile unsigned char SSP2STAT __at(0xF6D);

asm("SSP2STAT equ 0F6Dh");


typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned I2C_READ :1;
unsigned I2C_START :1;
unsigned I2C_STOP :1;
unsigned I2C_DAT :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :2;
unsigned READ_WRITE :1;
unsigned :2;
unsigned DATA_ADDRESS :1;
};
struct {
unsigned :2;
unsigned R :1;
unsigned :2;
unsigned D :1;
};
struct {
unsigned BF2 :1;
unsigned UA2 :1;
unsigned I2C_READ2 :1;
unsigned I2C_START2 :1;
unsigned I2C_STOP2 :1;
unsigned DA2 :1;
unsigned CKE2 :1;
unsigned SMP2 :1;
};
struct {
unsigned :2;
unsigned READ_WRITE2 :1;
unsigned S2 :1;
unsigned P2 :1;
unsigned DATA_ADDRESS2 :1;
};
struct {
unsigned :2;
unsigned RW2 :1;
unsigned START2 :1;
unsigned STOP2 :1;
unsigned D_A2 :1;
};
struct {
unsigned :5;
unsigned D_NOT_A2 :1;
};
struct {
unsigned :2;
unsigned R_W2 :1;
unsigned :2;
unsigned D_nA2 :1;
};
struct {
unsigned :2;
unsigned R_NOT_W2 :1;
};
struct {
unsigned :2;
unsigned R_nW2 :1;
unsigned :2;
unsigned I2C_DAT2 :1;
};
struct {
unsigned :2;
unsigned NOT_W2 :1;
};
struct {
unsigned :5;
unsigned NOT_A2 :1;
};
struct {
unsigned :2;
unsigned nW2 :1;
unsigned :2;
unsigned nA2 :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE2 :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS2 :1;
};
struct {
unsigned :2;
unsigned nWRITE2 :1;
unsigned :2;
unsigned nADDRESS2 :1;
};
} SSP2STATbits_t;
extern volatile SSP2STATbits_t SSP2STATbits __at(0xF6D);

# 3575
extern volatile unsigned char SSP2ADD __at(0xF6E);

asm("SSP2ADD equ 0F6Eh");


typedef union {
struct {
unsigned MSK02 :1;
unsigned MSK12 :1;
unsigned MSK22 :1;
unsigned MSK32 :1;
unsigned MSK42 :1;
unsigned MSK52 :1;
unsigned MSK62 :1;
unsigned MSK72 :1;
};
} SSP2ADDbits_t;
extern volatile SSP2ADDbits_t SSP2ADDbits __at(0xF6E);

# 3637
extern volatile unsigned char SSP2MSK __at(0xF6E);

asm("SSP2MSK equ 0F6Eh");


typedef union {
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
} SSP2MSKbits_t;
extern volatile SSP2MSKbits_t SSP2MSKbits __at(0xF6E);

# 3699
extern volatile unsigned char SSP2BUF __at(0xF6F);

asm("SSP2BUF equ 0F6Fh");




extern volatile unsigned char CCP5CON __at(0xF70);

asm("CCP5CON equ 0F70h");


typedef union {
struct {
unsigned CCP5M :4;
unsigned DC5B :2;
};
struct {
unsigned CCP5M0 :1;
unsigned CCP5M1 :1;
unsigned CCP5M2 :1;
unsigned CCP5M3 :1;
unsigned DC5B0 :1;
unsigned DC5B1 :1;
};
struct {
unsigned :4;
unsigned DCCP5Y :1;
unsigned DCCP5X :1;
};
struct {
unsigned :4;
unsigned DC5Y :1;
unsigned DC5X :1;
};
} CCP5CONbits_t;
extern volatile CCP5CONbits_t CCP5CONbits __at(0xF70);

# 3800
extern volatile unsigned short CCPR5 __at(0xF71);

asm("CCPR5 equ 0F71h");




extern volatile unsigned char CCPR5L __at(0xF71);

asm("CCPR5L equ 0F71h");




extern volatile unsigned char CCPR5H __at(0xF72);

asm("CCPR5H equ 0F72h");




extern volatile unsigned char CCP4CON __at(0xF73);

asm("CCP4CON equ 0F73h");


typedef union {
struct {
unsigned CCP4M :4;
unsigned DC4B :2;
};
struct {
unsigned CCP4M0 :1;
unsigned CCP4M1 :1;
unsigned CCP4M2 :1;
unsigned CCP4M3 :1;
unsigned DC4B0 :1;
unsigned DC4B1 :1;
};
struct {
unsigned :4;
unsigned DCCP4Y :1;
unsigned DCCP4X :1;
};
struct {
unsigned :4;
unsigned DC4Y :1;
unsigned DC4X :1;
};
} CCP4CONbits_t;
extern volatile CCP4CONbits_t CCP4CONbits __at(0xF73);

# 3915
extern volatile unsigned short CCPR4 __at(0xF74);

asm("CCPR4 equ 0F74h");




extern volatile unsigned char CCPR4L __at(0xF74);

asm("CCPR4L equ 0F74h");




extern volatile unsigned char CCPR4H __at(0xF75);

asm("CCPR4H equ 0F75h");




extern volatile unsigned char T4CON __at(0xF76);

asm("T4CON equ 0F76h");


typedef union {
struct {
unsigned T4CKPS :2;
unsigned TMR4ON :1;
unsigned T4OUTPS :4;
};
struct {
unsigned T4CKPS0 :1;
unsigned T4CKPS1 :1;
unsigned :1;
unsigned T4OUTPS0 :1;
unsigned T4OUTPS1 :1;
unsigned T4OUTPS2 :1;
unsigned T4OUTPS3 :1;
};
} T4CONbits_t;
extern volatile T4CONbits_t T4CONbits __at(0xF76);

# 4007
extern volatile unsigned char PR4 __at(0xF77);

asm("PR4 equ 0F77h");




extern volatile unsigned char CVRCON __at(0xF77);

asm("CVRCON equ 0F77h");


typedef union {
struct {
unsigned CVR :4;
unsigned CVRSS :1;
unsigned CVRR :1;
unsigned CVROE :1;
unsigned CVREN :1;
};
struct {
unsigned CVR0 :1;
unsigned CVR1 :1;
unsigned CVR2 :1;
unsigned CVR3 :1;
};
struct {
unsigned :6;
unsigned CVROEN :1;
};
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __at(0xF77);

# 4093
extern volatile unsigned char TMR4 __at(0xF78);

asm("TMR4 equ 0F78h");




extern volatile unsigned char T3CON __at(0xF79);

asm("T3CON equ 0F79h");


typedef union {
struct {
unsigned :2;
unsigned NOT_T3SYNC :1;
};
struct {
unsigned TMR3ON :1;
unsigned TMR3CS :1;
unsigned nT3SYNC :1;
unsigned T3CCP1 :1;
unsigned T3CKPS :2;
unsigned T3CCP2 :1;
unsigned RD16 :1;
};
struct {
unsigned :2;
unsigned T3SYNC :1;
unsigned :1;
unsigned T3CKPS0 :1;
unsigned T3CKPS1 :1;
};
struct {
unsigned :2;
unsigned T3INSYNC :1;
};
struct {
unsigned :3;
unsigned SOSCEN3 :1;
unsigned :3;
unsigned RD163 :1;
};
struct {
unsigned :7;
unsigned T3RD16 :1;
};
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __at(0xF79);

# 4221
extern volatile unsigned short TMR3 __at(0xF7A);

asm("TMR3 equ 0F7Ah");




extern volatile unsigned char TMR3L __at(0xF7A);

asm("TMR3L equ 0F7Ah");




extern volatile unsigned char TMR3H __at(0xF7B);

asm("TMR3H equ 0F7Bh");




extern volatile unsigned char BAUDCON2 __at(0xF7C);

asm("BAUDCON2 equ 0F7Ch");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned DTRXP :1;
unsigned RCMT :1;
};
struct {
unsigned ABDEN2 :1;
unsigned WUE2 :1;
unsigned :1;
unsigned BRG162 :1;
unsigned SCKP2 :1;
unsigned DTRXP2 :1;
unsigned RCIDL2 :1;
unsigned ABDOVF2 :1;
};
struct {
unsigned :4;
unsigned TXCKP2 :1;
unsigned RXDTP2 :1;
unsigned RCMT2 :1;
};
} BAUDCON2bits_t;
extern volatile BAUDCON2bits_t BAUDCON2bits __at(0xF7C);

# 4386
extern volatile unsigned char SPBRGH2 __at(0xF7D);

asm("SPBRGH2 equ 0F7Dh");




extern volatile unsigned char BAUDCON1 __at(0xF7E);

asm("BAUDCON1 equ 0F7Eh");


extern volatile unsigned char BAUDCON __at(0xF7E);

asm("BAUDCON equ 0F7Eh");

extern volatile unsigned char BAUDCTL __at(0xF7E);

asm("BAUDCTL equ 0F7Eh");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned DTRXP :1;
unsigned RCMT :1;
};
struct {
unsigned ABDEN1 :1;
unsigned WUE1 :1;
unsigned :1;
unsigned BRG161 :1;
unsigned CKTXP :1;
unsigned DTRXP1 :1;
unsigned RCIDL1 :1;
unsigned ABDOVF1 :1;
};
struct {
unsigned :4;
unsigned SCKP1 :1;
unsigned RXDTP1 :1;
unsigned RCMT1 :1;
};
struct {
unsigned :4;
unsigned TXCKP1 :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __at(0xF7E);

# 4571
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned DTRXP :1;
unsigned RCMT :1;
};
struct {
unsigned ABDEN1 :1;
unsigned WUE1 :1;
unsigned :1;
unsigned BRG161 :1;
unsigned CKTXP :1;
unsigned DTRXP1 :1;
unsigned RCIDL1 :1;
unsigned ABDOVF1 :1;
};
struct {
unsigned :4;
unsigned SCKP1 :1;
unsigned RXDTP1 :1;
unsigned RCMT1 :1;
};
struct {
unsigned :4;
unsigned TXCKP1 :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __at(0xF7E);

# 4734
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned DTRXP :1;
unsigned RCMT :1;
};
struct {
unsigned ABDEN1 :1;
unsigned WUE1 :1;
unsigned :1;
unsigned BRG161 :1;
unsigned CKTXP :1;
unsigned DTRXP1 :1;
unsigned RCIDL1 :1;
unsigned ABDOVF1 :1;
};
struct {
unsigned :4;
unsigned SCKP1 :1;
unsigned RXDTP1 :1;
unsigned RCMT1 :1;
};
struct {
unsigned :4;
unsigned TXCKP1 :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __at(0xF7E);

# 4900
extern volatile unsigned char SPBRGH1 __at(0xF7F);

asm("SPBRGH1 equ 0F7Fh");


extern volatile unsigned char SPBRGH __at(0xF7F);

asm("SPBRGH equ 0F7Fh");




extern volatile unsigned char PORTA __at(0xF80);

asm("PORTA equ 0F80h");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
struct {
unsigned AN0 :1;
unsigned AN1 :1;
unsigned AN2 :1;
unsigned AN3 :1;
unsigned T0CKI :1;
unsigned AN4 :1;
unsigned OSC2 :1;
};
struct {
unsigned :2;
unsigned VREFM :1;
unsigned VREFP :1;
unsigned :1;
unsigned C2INA :1;
unsigned CLKO :1;
};
struct {
unsigned ULPWUIN :1;
unsigned :4;
unsigned LVDIN :1;
unsigned :1;
unsigned RJPU :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0xF80);

# 5068
extern volatile unsigned char PORTB __at(0xF81);

asm("PORTB equ 0F81h");


typedef union {
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
struct {
unsigned INT0 :1;
unsigned INT1 :1;
unsigned INT2 :1;
unsigned INT3 :1;
unsigned KBI0 :1;
unsigned KBI1 :1;
unsigned KBI2 :1;
unsigned KBI3 :1;
};
struct {
unsigned :1;
unsigned PMA4 :1;
unsigned PMA3 :1;
unsigned PMA2 :1;
unsigned PMA1 :1;
unsigned PMA0 :1;
};
struct {
unsigned FLT0 :1;
};
struct {
unsigned :5;
unsigned PGC :1;
unsigned PGD :1;
};
struct {
unsigned :3;
unsigned CCP2_PA2 :1;
};
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __at(0xF81);

# 5245
extern volatile unsigned char PORTC __at(0xF82);

asm("PORTC equ 0F82h");


typedef union {
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
struct {
unsigned T1OSO :1;
unsigned T1OSI :1;
unsigned CCP1 :1;
unsigned SCK :1;
unsigned SDI :1;
unsigned SDO :1;
unsigned TX :1;
unsigned RX :1;
};
struct {
unsigned T13CKI :1;
unsigned CCP2 :1;
unsigned :1;
unsigned SCL :1;
unsigned SDA :1;
unsigned :1;
unsigned CK :1;
unsigned DT :1;
};
struct {
unsigned :5;
unsigned C2OUT :1;
};
struct {
unsigned :1;
unsigned PA2 :1;
unsigned PA1 :1;
};
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __at(0xF82);

# 5421
extern volatile unsigned char PORTD __at(0xF83);

asm("PORTD equ 0F83h");


typedef union {
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
struct {
unsigned PMD0 :1;
unsigned PMD1 :1;
unsigned PMD2 :1;
unsigned PMD3 :1;
unsigned PMD4 :1;
unsigned PMD5 :1;
unsigned PMD6 :1;
unsigned PMD7 :1;
};
struct {
unsigned :5;
unsigned SDA2 :1;
unsigned SCL2 :1;
unsigned SS2 :1;
};
struct {
unsigned :4;
unsigned SDO2 :1;
unsigned SDI2 :1;
unsigned SCK2 :1;
};
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __at(0xF83);

# 5575
extern volatile unsigned char PORTE __at(0xF84);

asm("PORTE equ 0F84h");


typedef union {
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
unsigned RE3 :1;
unsigned RE4 :1;
unsigned RE5 :1;
unsigned RE6 :1;
unsigned RE7 :1;
};
struct {
unsigned PMRD :1;
unsigned PMWR :1;
unsigned PMBE :1;
unsigned PMA13 :1;
unsigned PMA12 :1;
unsigned PMA11 :1;
unsigned PMA10 :1;
unsigned PMA9 :1;
};
struct {
unsigned :3;
unsigned REFO :1;
unsigned :3;
unsigned CCP2 :1;
};
struct {
unsigned PD2 :1;
unsigned PC2 :1;
unsigned CCP10 :1;
unsigned CCP9E :1;
unsigned CCP8E :1;
unsigned CCP7E :1;
unsigned CCP6E :1;
unsigned CCP2E :1;
};
struct {
unsigned RDE :1;
unsigned WRE :1;
unsigned CS :1;
unsigned PC3E :1;
unsigned PB3E :1;
unsigned PC1E :1;
unsigned PB1E :1;
unsigned PA2E :1;
};
struct {
unsigned :2;
unsigned PB2 :1;
};
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __at(0xF84);

# 5812
extern volatile unsigned char PORTF __at(0xF85);

asm("PORTF equ 0F85h");


typedef union {
struct {
unsigned :2;
unsigned RF2 :1;
unsigned RF3 :1;
unsigned RF4 :1;
unsigned RF5 :1;
unsigned RF6 :1;
unsigned RF7 :1;
};
struct {
unsigned :2;
unsigned AN7 :1;
unsigned :2;
unsigned AN10 :1;
unsigned AN11 :1;
unsigned SS :1;
};
struct {
unsigned :5;
unsigned CVREF :1;
};
struct {
unsigned :2;
unsigned C2INB :1;
unsigned :2;
unsigned C1INB :1;
unsigned C1INA :1;
unsigned C1OUT :1;
};
struct {
unsigned :2;
unsigned PMA5 :1;
};
struct {
unsigned :2;
unsigned C1OUTF :1;
};
} PORTFbits_t;
extern volatile PORTFbits_t PORTFbits __at(0xF85);

# 5946
extern volatile unsigned char PORTG __at(0xF86);

asm("PORTG equ 0F86h");


typedef union {
struct {
unsigned RG0 :1;
unsigned RG1 :1;
unsigned RG2 :1;
unsigned RG3 :1;
unsigned RG4 :1;
unsigned :1;
unsigned REPU :1;
unsigned RDPU :1;
};
struct {
unsigned CCP3 :1;
unsigned TX2 :1;
unsigned RX2 :1;
unsigned CCP4 :1;
unsigned CCP5 :1;
};
struct {
unsigned :1;
unsigned CK2 :1;
unsigned DT2 :1;
};
struct {
unsigned PMA8 :1;
unsigned PMA7 :1;
unsigned PMA6 :1;
unsigned PMCS1 :1;
unsigned PMCS2 :1;
};
struct {
unsigned :1;
unsigned C3OUTG :1;
unsigned :4;
unsigned RG6 :1;
unsigned RG7 :1;
};
} PORTGbits_t;
extern volatile PORTGbits_t PORTGbits __at(0xF86);

# 6104
extern volatile unsigned char LATA __at(0xF89);

asm("LATA equ 0F89h");


typedef union {
struct {
unsigned LATA0 :1;
unsigned LATA1 :1;
unsigned LATA2 :1;
unsigned LATA3 :1;
unsigned LATA4 :1;
unsigned LATA5 :1;
unsigned LATA6 :1;
unsigned LATA7 :1;
};
struct {
unsigned LA0 :1;
unsigned LA1 :1;
unsigned LA2 :1;
unsigned LA3 :1;
unsigned LA4 :1;
unsigned LA5 :1;
unsigned LA6 :1;
unsigned LA7 :1;
};
} LATAbits_t;
extern volatile LATAbits_t LATAbits __at(0xF89);

# 6216
extern volatile unsigned char LATB __at(0xF8A);

asm("LATB equ 0F8Ah");


typedef union {
struct {
unsigned LATB0 :1;
unsigned LATB1 :1;
unsigned LATB2 :1;
unsigned LATB3 :1;
unsigned LATB4 :1;
unsigned LATB5 :1;
unsigned LATB6 :1;
unsigned LATB7 :1;
};
struct {
unsigned LB0 :1;
unsigned LB1 :1;
unsigned LB2 :1;
unsigned LB3 :1;
unsigned LB4 :1;
unsigned LB5 :1;
unsigned LB6 :1;
unsigned LB7 :1;
};
} LATBbits_t;
extern volatile LATBbits_t LATBbits __at(0xF8A);

# 6328
extern volatile unsigned char LATC __at(0xF8B);

asm("LATC equ 0F8Bh");


typedef union {
struct {
unsigned LATC0 :1;
unsigned LATC1 :1;
unsigned LATC2 :1;
unsigned LATC3 :1;
unsigned LATC4 :1;
unsigned LATC5 :1;
unsigned LATC6 :1;
unsigned LATC7 :1;
};
struct {
unsigned LC0 :1;
unsigned LC1 :1;
unsigned LC2 :1;
unsigned LC3 :1;
unsigned LC4 :1;
unsigned LC5 :1;
unsigned LC6 :1;
unsigned LC7 :1;
};
} LATCbits_t;
extern volatile LATCbits_t LATCbits __at(0xF8B);

# 6440
extern volatile unsigned char LATD __at(0xF8C);

asm("LATD equ 0F8Ch");


typedef union {
struct {
unsigned LATD0 :1;
unsigned LATD1 :1;
unsigned LATD2 :1;
unsigned LATD3 :1;
unsigned LATD4 :1;
unsigned LATD5 :1;
unsigned LATD6 :1;
unsigned LATD7 :1;
};
struct {
unsigned LD0 :1;
unsigned LD1 :1;
unsigned LD2 :1;
unsigned LD3 :1;
unsigned LD4 :1;
unsigned LD5 :1;
unsigned LD6 :1;
unsigned LD7 :1;
};
} LATDbits_t;
extern volatile LATDbits_t LATDbits __at(0xF8C);

# 6552
extern volatile unsigned char LATE __at(0xF8D);

asm("LATE equ 0F8Dh");


typedef union {
struct {
unsigned LATE0 :1;
unsigned LATE1 :1;
unsigned LATE2 :1;
unsigned LATE3 :1;
unsigned LATE4 :1;
unsigned LATE5 :1;
unsigned LATE6 :1;
unsigned LATE7 :1;
};
struct {
unsigned LE0 :1;
unsigned LE1 :1;
unsigned LE2 :1;
unsigned LE3 :1;
unsigned LE4 :1;
unsigned LE5 :1;
unsigned LE6 :1;
unsigned LE7 :1;
};
} LATEbits_t;
extern volatile LATEbits_t LATEbits __at(0xF8D);

# 6664
extern volatile unsigned char LATF __at(0xF8E);

asm("LATF equ 0F8Eh");


typedef union {
struct {
unsigned :2;
unsigned LATF2 :1;
unsigned LATF3 :1;
unsigned LATF4 :1;
unsigned LATF5 :1;
unsigned LATF6 :1;
unsigned LATF7 :1;
};
struct {
unsigned :2;
unsigned LF2 :1;
unsigned LF3 :1;
unsigned LF4 :1;
unsigned LF5 :1;
unsigned LF6 :1;
unsigned LF7 :1;
};
} LATFbits_t;
extern volatile LATFbits_t LATFbits __at(0xF8E);

# 6754
extern volatile unsigned char LATG __at(0xF8F);

asm("LATG equ 0F8Fh");


typedef union {
struct {
unsigned LATG0 :1;
unsigned LATG1 :1;
unsigned LATG2 :1;
unsigned LATG3 :1;
unsigned LATG4 :1;
};
struct {
unsigned LG0 :1;
unsigned LG1 :1;
unsigned LG2 :1;
unsigned LG3 :1;
unsigned LG4 :1;
};
} LATGbits_t;
extern volatile LATGbits_t LATGbits __at(0xF8F);

# 6830
extern volatile unsigned char TRISA __at(0xF92);

asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __at(0xF92);

asm("DDRA equ 0F92h");


typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
unsigned TRISA7 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0xF92);

# 6945
typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
unsigned TRISA7 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __at(0xF92);

# 7052
extern volatile unsigned char TRISB __at(0xF93);

asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __at(0xF93);

asm("DDRB equ 0F93h");


typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __at(0xF93);

# 7167
typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __at(0xF93);

# 7274
extern volatile unsigned char TRISC __at(0xF94);

asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __at(0xF94);

asm("DDRC equ 0F94h");


typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __at(0xF94);

# 7389
typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __at(0xF94);

# 7496
extern volatile unsigned char TRISD __at(0xF95);

asm("TRISD equ 0F95h");


extern volatile unsigned char DDRD __at(0xF95);

asm("DDRD equ 0F95h");


typedef union {
struct {
unsigned TRISD0 :1;
unsigned TRISD1 :1;
unsigned TRISD2 :1;
unsigned TRISD3 :1;
unsigned TRISD4 :1;
unsigned TRISD5 :1;
unsigned TRISD6 :1;
unsigned TRISD7 :1;
};
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __at(0xF95);

# 7611
typedef union {
struct {
unsigned TRISD0 :1;
unsigned TRISD1 :1;
unsigned TRISD2 :1;
unsigned TRISD3 :1;
unsigned TRISD4 :1;
unsigned TRISD5 :1;
unsigned TRISD6 :1;
unsigned TRISD7 :1;
};
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
} DDRDbits_t;
extern volatile DDRDbits_t DDRDbits __at(0xF95);

# 7718
extern volatile unsigned char TRISE __at(0xF96);

asm("TRISE equ 0F96h");


extern volatile unsigned char DDRE __at(0xF96);

asm("DDRE equ 0F96h");


typedef union {
struct {
unsigned TRISE0 :1;
unsigned TRISE1 :1;
unsigned TRISE2 :1;
unsigned TRISE3 :1;
unsigned TRISE4 :1;
unsigned TRISE5 :1;
unsigned TRISE6 :1;
unsigned TRISE7 :1;
};
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
unsigned RE3 :1;
unsigned RE4 :1;
unsigned RE5 :1;
unsigned RE6 :1;
unsigned RE7 :1;
};
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __at(0xF96);

# 7833
typedef union {
struct {
unsigned TRISE0 :1;
unsigned TRISE1 :1;
unsigned TRISE2 :1;
unsigned TRISE3 :1;
unsigned TRISE4 :1;
unsigned TRISE5 :1;
unsigned TRISE6 :1;
unsigned TRISE7 :1;
};
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
unsigned RE3 :1;
unsigned RE4 :1;
unsigned RE5 :1;
unsigned RE6 :1;
unsigned RE7 :1;
};
} DDREbits_t;
extern volatile DDREbits_t DDREbits __at(0xF96);

# 7940
extern volatile unsigned char TRISF __at(0xF97);

asm("TRISF equ 0F97h");


extern volatile unsigned char DDRF __at(0xF97);

asm("DDRF equ 0F97h");


typedef union {
struct {
unsigned :2;
unsigned TRISF2 :1;
unsigned TRISF3 :1;
unsigned TRISF4 :1;
unsigned TRISF5 :1;
unsigned TRISF6 :1;
unsigned TRISF7 :1;
};
struct {
unsigned :2;
unsigned RF2 :1;
unsigned RF3 :1;
unsigned RF4 :1;
unsigned RF5 :1;
unsigned RF6 :1;
unsigned RF7 :1;
};
} TRISFbits_t;
extern volatile TRISFbits_t TRISFbits __at(0xF97);

# 8033
typedef union {
struct {
unsigned :2;
unsigned TRISF2 :1;
unsigned TRISF3 :1;
unsigned TRISF4 :1;
unsigned TRISF5 :1;
unsigned TRISF6 :1;
unsigned TRISF7 :1;
};
struct {
unsigned :2;
unsigned RF2 :1;
unsigned RF3 :1;
unsigned RF4 :1;
unsigned RF5 :1;
unsigned RF6 :1;
unsigned RF7 :1;
};
} DDRFbits_t;
extern volatile DDRFbits_t DDRFbits __at(0xF97);

# 8118
extern volatile unsigned char TRISG __at(0xF98);

asm("TRISG equ 0F98h");


extern volatile unsigned char DDRG __at(0xF98);

asm("DDRG equ 0F98h");


typedef union {
struct {
unsigned TRISG0 :1;
unsigned TRISG1 :1;
unsigned TRISG2 :1;
unsigned TRISG3 :1;
unsigned TRISG4 :1;
};
struct {
unsigned RG0 :1;
unsigned RG1 :1;
unsigned RG2 :1;
unsigned RG3 :1;
unsigned RG4 :1;
};
} TRISGbits_t;
extern volatile TRISGbits_t TRISGbits __at(0xF98);

# 8197
typedef union {
struct {
unsigned TRISG0 :1;
unsigned TRISG1 :1;
unsigned TRISG2 :1;
unsigned TRISG3 :1;
unsigned TRISG4 :1;
};
struct {
unsigned RG0 :1;
unsigned RG1 :1;
unsigned RG2 :1;
unsigned RG3 :1;
unsigned RG4 :1;
};
} DDRGbits_t;
extern volatile DDRGbits_t DDRGbits __at(0xF98);

# 8268
extern volatile unsigned char OSCTUNE __at(0xF9B);

asm("OSCTUNE equ 0F9Bh");


typedef union {
struct {
unsigned TUN0 :1;
unsigned TUN1 :1;
unsigned TUN2 :1;
unsigned TUN3 :1;
unsigned TUN4 :1;
unsigned TUN5 :1;
unsigned PLLEN :1;
unsigned INTSRC :1;
};
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __at(0xF9B);

# 8330
extern volatile unsigned char RCSTA2 __at(0xF9C);

asm("RCSTA2 equ 0F9Ch");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned RCD8 :1;
unsigned :5;
unsigned RC9 :1;
};
struct {
unsigned :6;
unsigned NOT_RC8 :1;
};
struct {
unsigned :6;
unsigned nRC8 :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned RX9D2 :1;
unsigned OERR2 :1;
unsigned FERR2 :1;
unsigned ADDEN2 :1;
unsigned CREN2 :1;
unsigned SREN2 :1;
unsigned RX92 :1;
unsigned SPEN2 :1;
};
struct {
unsigned RCD82 :1;
unsigned :5;
unsigned RC8_92 :1;
};
struct {
unsigned :6;
unsigned RC92 :1;
};
} RCSTA2bits_t;
extern volatile RCSTA2bits_t RCSTA2bits __at(0xF9C);

# 8508
extern volatile unsigned char PIE1 __at(0xF9D);

asm("PIE1 equ 0F9Dh");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned TMR2IE :1;
unsigned CCP1IE :1;
unsigned SSP1IE :1;
unsigned TX1IE :1;
unsigned RC1IE :1;
unsigned ADIE :1;
unsigned PMPIE :1;
};
struct {
unsigned :3;
unsigned SSPIE :1;
unsigned TXIE :1;
unsigned RCIE :1;
};
struct {
unsigned :7;
unsigned PSPIE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0xF9D);

# 8600
extern volatile unsigned char PIR1 __at(0xF9E);

asm("PIR1 equ 0F9Eh");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned TMR2IF :1;
unsigned CCP1IF :1;
unsigned SSP1IF :1;
unsigned TX1IF :1;
unsigned RC1IF :1;
unsigned ADIF :1;
unsigned PMPIF :1;
};
struct {
unsigned :3;
unsigned SSPIF :1;
unsigned TXIF :1;
unsigned RCIF :1;
};
struct {
unsigned :7;
unsigned PSPIF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0xF9E);

# 8692
extern volatile unsigned char IPR1 __at(0xF9F);

asm("IPR1 equ 0F9Fh");


typedef union {
struct {
unsigned TMR1IP :1;
unsigned TMR2IP :1;
unsigned CCP1IP :1;
unsigned SSP1IP :1;
unsigned TX1IP :1;
unsigned RC1IP :1;
unsigned ADIP :1;
unsigned PMPIP :1;
};
struct {
unsigned :3;
unsigned SSPIP :1;
unsigned TXIP :1;
unsigned RCIP :1;
};
struct {
unsigned :7;
unsigned PSPIP :1;
};
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __at(0xF9F);

# 8784
extern volatile unsigned char PIE2 __at(0xFA0);

asm("PIE2 equ 0FA0h");


typedef union {
struct {
unsigned CCP2IE :1;
unsigned TMR3IE :1;
unsigned LVDIE :1;
unsigned BCL1IE :1;
unsigned USBIE :1;
unsigned CM1IE :1;
unsigned CM2IE :1;
unsigned OSCFIE :1;
};
struct {
unsigned :3;
unsigned BCLIE :1;
};
struct {
unsigned :6;
unsigned CMIE :1;
};
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __at(0xFA0);

# 8864
extern volatile unsigned char PIR2 __at(0xFA1);

asm("PIR2 equ 0FA1h");


typedef union {
struct {
unsigned CCP2IF :1;
unsigned TMR3IF :1;
unsigned LVDIF :1;
unsigned BCL1IF :1;
unsigned USBIF :1;
unsigned CM1IF :1;
unsigned CM2IF :1;
unsigned OSCFIF :1;
};
struct {
unsigned :3;
unsigned BCLIF :1;
};
struct {
unsigned :6;
unsigned CMIF :1;
};
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __at(0xFA1);

# 8944
extern volatile unsigned char IPR2 __at(0xFA2);

asm("IPR2 equ 0FA2h");


typedef union {
struct {
unsigned CCP2IP :1;
unsigned TMR3IP :1;
unsigned LVDIP :1;
unsigned BCL1IP :1;
unsigned USBIP :1;
unsigned CM1IP :1;
unsigned CM2IP :1;
unsigned OSCFIP :1;
};
struct {
unsigned :3;
unsigned BCLIP :1;
};
struct {
unsigned :6;
unsigned CMIP :1;
};
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __at(0xFA2);

# 9024
extern volatile unsigned char PIE3 __at(0xFA3);

asm("PIE3 equ 0FA3h");


typedef union {
struct {
unsigned CCP3IE :1;
unsigned CCP4IE :1;
unsigned CCP5IE :1;
unsigned TMR4IE :1;
unsigned TX2IE :1;
unsigned RC2IE :1;
unsigned BCL2IE :1;
unsigned SSP2IE :1;
};
struct {
unsigned RXB0IE :1;
unsigned RXB1IE :1;
unsigned TXB0IE :1;
unsigned TXB1IE :1;
unsigned TXB2IE :1;
};
struct {
unsigned :1;
unsigned RXBNIE :1;
unsigned :2;
unsigned TXBNIE :1;
};
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __at(0xFA3);

# 9134
extern volatile unsigned char PIR3 __at(0xFA4);

asm("PIR3 equ 0FA4h");


typedef union {
struct {
unsigned CCP3IF :1;
unsigned CCP4IF :1;
unsigned CCP5IF :1;
unsigned TMR4IF :1;
unsigned TX2IF :1;
unsigned RC2IF :1;
unsigned BCL2IF :1;
unsigned SSP2IF :1;
};
struct {
unsigned :1;
unsigned RXBNIF :1;
unsigned :2;
unsigned TXBNIF :1;
};
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __at(0xFA4);

# 9212
extern volatile unsigned char IPR3 __at(0xFA5);

asm("IPR3 equ 0FA5h");


typedef union {
struct {
unsigned CCP3IP :1;
unsigned CCP4IP :1;
unsigned CCP5IP :1;
unsigned TMR4IP :1;
unsigned TX2IP :1;
unsigned RC2IP :1;
unsigned BCL2IP :1;
unsigned SSP2IP :1;
};
struct {
unsigned :1;
unsigned RXBNIP :1;
unsigned :2;
unsigned TXBNIP :1;
};
} IPR3bits_t;
extern volatile IPR3bits_t IPR3bits __at(0xFA5);

# 9290
extern volatile unsigned char EECON1 __at(0xFA6);

asm("EECON1 equ 0FA6h");


typedef union {
struct {
unsigned :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
unsigned FREE :1;
unsigned WPROG :1;
};
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __at(0xFA6);

# 9335
extern volatile unsigned char EECON2 __at(0xFA7);

asm("EECON2 equ 0FA7h");




extern volatile unsigned char TXSTA2 __at(0xFA8);

asm("TXSTA2 equ 0FA8h");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TXD8 :1;
unsigned :5;
unsigned TX8_9 :1;
};
struct {
unsigned :6;
unsigned NOT_TX8 :1;
};
struct {
unsigned :6;
unsigned nTX8 :1;
};
struct {
unsigned TX9D2 :1;
unsigned TRMT2 :1;
unsigned BRGH2 :1;
unsigned SENDB2 :1;
unsigned SYNC2 :1;
unsigned TXEN2 :1;
unsigned TX92 :1;
unsigned CSRC2 :1;
};
struct {
unsigned TXD82 :1;
unsigned :5;
unsigned TX8_92 :1;
};
} TXSTA2bits_t;
extern volatile TXSTA2bits_t TXSTA2bits __at(0xFA8);

# 9502
extern volatile unsigned char TXREG2 __at(0xFA9);

asm("TXREG2 equ 0FA9h");




extern volatile unsigned char RCREG2 __at(0xFAA);

asm("RCREG2 equ 0FAAh");




extern volatile unsigned char SPBRG2 __at(0xFAB);

asm("SPBRG2 equ 0FABh");




extern volatile unsigned char RCSTA1 __at(0xFAC);

asm("RCSTA1 equ 0FACh");


extern volatile unsigned char RCSTA __at(0xFAC);

asm("RCSTA equ 0FACh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned RCD8 :1;
unsigned :5;
unsigned RC9 :1;
};
struct {
unsigned :6;
unsigned NOT_RC8 :1;
};
struct {
unsigned :6;
unsigned nRC8 :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned RX9D1 :1;
unsigned OERR1 :1;
unsigned FERR1 :1;
unsigned ADDEN1 :1;
unsigned CREN1 :1;
unsigned SREN1 :1;
unsigned RX91 :1;
unsigned SPEN1 :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __at(0xFAC);

# 9689
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned RCD8 :1;
unsigned :5;
unsigned RC9 :1;
};
struct {
unsigned :6;
unsigned NOT_RC8 :1;
};
struct {
unsigned :6;
unsigned nRC8 :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned RX9D1 :1;
unsigned OERR1 :1;
unsigned FERR1 :1;
unsigned ADDEN1 :1;
unsigned CREN1 :1;
unsigned SREN1 :1;
unsigned RX91 :1;
unsigned SPEN1 :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __at(0xFAC);

# 9847
extern volatile unsigned char TXSTA1 __at(0xFAD);

asm("TXSTA1 equ 0FADh");


extern volatile unsigned char TXSTA __at(0xFAD);

asm("TXSTA equ 0FADh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TXD8 :1;
unsigned :5;
unsigned TX8_9 :1;
};
struct {
unsigned :6;
unsigned NOT_TX8 :1;
};
struct {
unsigned :6;
unsigned nTX8 :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __at(0xFAD);

# 9995
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TXD8 :1;
unsigned :5;
unsigned TX8_9 :1;
};
struct {
unsigned :6;
unsigned NOT_TX8 :1;
};
struct {
unsigned :6;
unsigned nTX8 :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __at(0xFAD);

# 10135
extern volatile unsigned char TXREG1 __at(0xFAE);

asm("TXREG1 equ 0FAEh");


extern volatile unsigned char TXREG __at(0xFAE);

asm("TXREG equ 0FAEh");




extern volatile unsigned char RCREG1 __at(0xFAF);

asm("RCREG1 equ 0FAFh");


extern volatile unsigned char RCREG __at(0xFAF);

asm("RCREG equ 0FAFh");




extern volatile unsigned char SPBRG1 __at(0xFB0);

asm("SPBRG1 equ 0FB0h");


extern volatile unsigned char SPBRG __at(0xFB0);

asm("SPBRG equ 0FB0h");




extern volatile unsigned char ECCP3CON __at(0xFB1);

asm("ECCP3CON equ 0FB1h");


extern volatile unsigned char CCP3CON __at(0xFB1);

asm("CCP3CON equ 0FB1h");


typedef union {
struct {
unsigned CCP3M :4;
unsigned DC3B :2;
unsigned P3M :2;
};
struct {
unsigned CCP3M0 :1;
unsigned CCP3M1 :1;
unsigned CCP3M2 :1;
unsigned CCP3M3 :1;
unsigned DC3B0 :1;
unsigned DC3B1 :1;
unsigned P3M0 :1;
unsigned P3M1 :1;
};
struct {
unsigned :4;
unsigned CCP3Y :1;
unsigned CCP3X :1;
};
} ECCP3CONbits_t;
extern volatile ECCP3CONbits_t ECCP3CONbits __at(0xFB1);

# 10271
typedef union {
struct {
unsigned CCP3M :4;
unsigned DC3B :2;
unsigned P3M :2;
};
struct {
unsigned CCP3M0 :1;
unsigned CCP3M1 :1;
unsigned CCP3M2 :1;
unsigned CCP3M3 :1;
unsigned DC3B0 :1;
unsigned DC3B1 :1;
unsigned P3M0 :1;
unsigned P3M1 :1;
};
struct {
unsigned :4;
unsigned CCP3Y :1;
unsigned CCP3X :1;
};
} CCP3CONbits_t;
extern volatile CCP3CONbits_t CCP3CONbits __at(0xFB1);

# 10363
extern volatile unsigned short CCPR3 __at(0xFB2);

asm("CCPR3 equ 0FB2h");




extern volatile unsigned char CCPR3L __at(0xFB2);

asm("CCPR3L equ 0FB2h");




extern volatile unsigned char CCPR3H __at(0xFB3);

asm("CCPR3H equ 0FB3h");




extern volatile unsigned char ECCP3DEL __at(0xFB4);

asm("ECCP3DEL equ 0FB4h");


typedef union {
struct {
unsigned PDC :7;
unsigned PRSEN :1;
};
struct {
unsigned PDC0 :1;
unsigned PDC1 :1;
unsigned PDC2 :1;
unsigned PDC3 :1;
unsigned PDC4 :1;
unsigned PDC5 :1;
unsigned PDC6 :1;
};
struct {
unsigned P3DC0 :1;
unsigned P3DC1 :1;
unsigned P3DC2 :1;
unsigned P3DC3 :1;
unsigned P3DC4 :1;
unsigned P3DC5 :1;
unsigned P3DC6 :1;
unsigned P3RSEN :1;
};
} ECCP3DELbits_t;
extern volatile ECCP3DELbits_t ECCP3DELbits __at(0xFB4);

# 10504
extern volatile unsigned char ECCP3AS __at(0xFB5);

asm("ECCP3AS equ 0FB5h");


typedef union {
struct {
unsigned PSSBD :2;
unsigned PSSAC :2;
unsigned ECCPAS :3;
unsigned ECCPASE :1;
};
struct {
unsigned PSSBD0 :1;
unsigned PSSBD1 :1;
unsigned PSSAC0 :1;
unsigned PSSAC1 :1;
unsigned ECCPAS0 :1;
unsigned ECCPAS1 :1;
unsigned ECCPAS2 :1;
};
struct {
unsigned PSS3BD0 :1;
unsigned PSS3BD1 :1;
unsigned PSS3AC0 :1;
unsigned PSS3AC1 :1;
unsigned ECCP3AS0 :1;
unsigned ECCP3AS1 :1;
unsigned ECCP3AS2 :1;
unsigned ECCP3ASE :1;
};
} ECCP3ASbits_t;
extern volatile ECCP3ASbits_t ECCP3ASbits __at(0xFB5);

# 10636
extern volatile unsigned char ECCP2CON __at(0xFB6);

asm("ECCP2CON equ 0FB6h");


extern volatile unsigned char CCP2CON __at(0xFB6);

asm("CCP2CON equ 0FB6h");


typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
unsigned P2M :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
unsigned P2M0 :1;
unsigned P2M1 :1;
};
struct {
unsigned :4;
unsigned CCP2Y :1;
unsigned CCP2X :1;
};
} ECCP2CONbits_t;
extern volatile ECCP2CONbits_t ECCP2CONbits __at(0xFB6);

# 10736
typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
unsigned P2M :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
unsigned P2M0 :1;
unsigned P2M1 :1;
};
struct {
unsigned :4;
unsigned CCP2Y :1;
unsigned CCP2X :1;
};
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __at(0xFB6);

# 10828
extern volatile unsigned short CCPR2 __at(0xFB7);

asm("CCPR2 equ 0FB7h");




extern volatile unsigned char CCPR2L __at(0xFB7);

asm("CCPR2L equ 0FB7h");




extern volatile unsigned char CCPR2H __at(0xFB8);

asm("CCPR2H equ 0FB8h");




extern volatile unsigned char ECCP2DEL __at(0xFB9);

asm("ECCP2DEL equ 0FB9h");


typedef union {
struct {
unsigned PDC :7;
unsigned PRSEN :1;
};
struct {
unsigned PDC0 :1;
unsigned PDC1 :1;
unsigned PDC2 :1;
unsigned PDC3 :1;
unsigned PDC4 :1;
unsigned PDC5 :1;
unsigned PDC6 :1;
};
struct {
unsigned P2DC0 :1;
unsigned P2DC1 :1;
unsigned P2DC2 :1;
unsigned P2DC3 :1;
unsigned P2DC4 :1;
unsigned P2DC5 :1;
unsigned P2DC6 :1;
unsigned P2RSEN :1;
};
} ECCP2DELbits_t;
extern volatile ECCP2DELbits_t ECCP2DELbits __at(0xFB9);

# 10969
extern volatile unsigned char ECCP2AS __at(0xFBA);

asm("ECCP2AS equ 0FBAh");


typedef union {
struct {
unsigned PSSBD :2;
unsigned PSSAC :2;
unsigned ECCPAS :3;
unsigned ECCPASE :1;
};
struct {
unsigned PSSBD0 :1;
unsigned PSSBD1 :1;
unsigned PSSAC0 :1;
unsigned PSSAC1 :1;
unsigned ECCPAS0 :1;
unsigned ECCPAS1 :1;
unsigned ECCPAS2 :1;
};
struct {
unsigned PSS2BD0 :1;
unsigned PSS2BD1 :1;
unsigned PSS2AC0 :1;
unsigned PSS2AC1 :1;
unsigned ECCP2AS0 :1;
unsigned ECCP2AS1 :1;
unsigned ECCP2AS2 :1;
unsigned ECCP2ASE :1;
};
} ECCP2ASbits_t;
extern volatile ECCP2ASbits_t ECCP2ASbits __at(0xFBA);

# 11101
extern volatile unsigned char ECCP1CON __at(0xFBB);

asm("ECCP1CON equ 0FBBh");


extern volatile unsigned char CCP1CON __at(0xFBB);

asm("CCP1CON equ 0FBBh");


typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
unsigned P1M :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
unsigned P1M0 :1;
unsigned P1M1 :1;
};
struct {
unsigned :4;
unsigned CCP1Y :1;
unsigned CCP1X :1;
};
} ECCP1CONbits_t;
extern volatile ECCP1CONbits_t ECCP1CONbits __at(0xFBB);

# 11201
typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
unsigned P1M :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
unsigned P1M0 :1;
unsigned P1M1 :1;
};
struct {
unsigned :4;
unsigned CCP1Y :1;
unsigned CCP1X :1;
};
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __at(0xFBB);

# 11293
extern volatile unsigned short CCPR1 __at(0xFBC);

asm("CCPR1 equ 0FBCh");




extern volatile unsigned char CCPR1L __at(0xFBC);

asm("CCPR1L equ 0FBCh");




extern volatile unsigned char CCPR1H __at(0xFBD);

asm("CCPR1H equ 0FBDh");




extern volatile unsigned char ECCP1DEL __at(0xFBE);

asm("ECCP1DEL equ 0FBEh");


typedef union {
struct {
unsigned PDC :7;
unsigned PRSEN :1;
};
struct {
unsigned PDC0 :1;
unsigned PDC1 :1;
unsigned PDC2 :1;
unsigned PDC3 :1;
unsigned PDC4 :1;
unsigned PDC5 :1;
unsigned PDC6 :1;
};
struct {
unsigned P1DC0 :1;
unsigned P1DC1 :1;
unsigned P1DC2 :1;
unsigned P1DC3 :1;
unsigned P1DC4 :1;
unsigned P1DC5 :1;
unsigned P1DC6 :1;
unsigned P1RSEN :1;
};
} ECCP1DELbits_t;
extern volatile ECCP1DELbits_t ECCP1DELbits __at(0xFBE);

# 11434
extern volatile unsigned char ECCP1AS __at(0xFBF);

asm("ECCP1AS equ 0FBFh");


typedef union {
struct {
unsigned PSSBD :2;
unsigned PSSAC :2;
unsigned ECCPAS :3;
unsigned ECCPASE :1;
};
struct {
unsigned PSSBD0 :1;
unsigned PSSBD1 :1;
unsigned PSSAC0 :1;
unsigned PSSAC1 :1;
unsigned ECCPAS0 :1;
unsigned ECCPAS1 :1;
unsigned ECCPAS2 :1;
};
struct {
unsigned PSS1BD0 :1;
unsigned PSS1BD1 :1;
unsigned PSS1AC0 :1;
unsigned PSS1AC1 :1;
unsigned ECCP1AS0 :1;
unsigned ECCP1AS1 :1;
unsigned ECCP1AS2 :1;
unsigned ECCP1ASE :1;
};
} ECCP1ASbits_t;
extern volatile ECCP1ASbits_t ECCP1ASbits __at(0xFBF);

# 11566
extern volatile unsigned char WDTCON __at(0xFC0);

asm("WDTCON equ 0FC0h");


typedef union {
struct {
unsigned SWDTEN :1;
unsigned :3;
unsigned ADSHR :1;
unsigned :1;
unsigned LVDSTAT :1;
unsigned REGSLP :1;
};
struct {
unsigned SWDTE :1;
unsigned :3;
unsigned DEVCFG :1;
};
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __at(0xFC0);

# 11621
extern volatile unsigned char ADCON1 __at(0xFC1);

asm("ADCON1 equ 0FC1h");


typedef union {
struct {
unsigned ADCS :3;
unsigned ACQT :3;
unsigned ADCAL :1;
unsigned ADFM :1;
};
struct {
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
unsigned ACQT0 :1;
unsigned ACQT1 :1;
unsigned ACQT2 :1;
};
struct {
unsigned :3;
unsigned CHSN3 :1;
unsigned VCFG01 :1;
unsigned VCFG11 :1;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0xFC1);

# 11718
extern volatile unsigned char ANCON0 __at(0xFC1);

asm("ANCON0 equ 0FC1h");


typedef union {
struct {
unsigned PCFGL :8;
};
struct {
unsigned PCFG0 :1;
unsigned PCFG1 :1;
unsigned PCFG2 :1;
unsigned PCFG3 :1;
unsigned PCFG4 :1;
unsigned :2;
unsigned PCFG7 :1;
};
struct {
unsigned :5;
unsigned PCFG5 :1;
unsigned PCFG6 :1;
};
} ANCON0bits_t;
extern volatile ANCON0bits_t ANCON0bits __at(0xFC1);

# 11792
extern volatile unsigned char ADCON0 __at(0xFC2);

asm("ADCON0 equ 0FC2h");


typedef union {
struct {
unsigned :1;
unsigned GO_NOT_DONE :1;
};
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned CHS :4;
unsigned VCFG :2;
};
struct {
unsigned :1;
unsigned DONE :1;
unsigned CHS0 :1;
unsigned CHS1 :1;
unsigned CHS2 :1;
unsigned CHS3 :1;
unsigned VCFG0 :1;
unsigned VCFG1 :1;
};
struct {
unsigned :1;
unsigned GO_DONE :1;
};
struct {
unsigned :1;
unsigned GO :1;
};
struct {
unsigned :1;
unsigned NOT_DONE :1;
};
struct {
unsigned :1;
unsigned GODONE :1;
unsigned :5;
unsigned ADCAL :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0xFC2);

# 11927
extern volatile unsigned char ANCON1 __at(0xFC2);

asm("ANCON1 equ 0FC2h");


typedef union {
struct {
unsigned PCFGH :8;
};
struct {
unsigned :2;
unsigned PCFG10 :1;
unsigned PCFG11 :1;
unsigned PCFG12 :1;
unsigned PCFG13 :1;
unsigned PCFG14 :1;
unsigned PCFG15 :1;
};
struct {
unsigned PCFG8 :1;
unsigned PCFG9 :1;
};
} ANCON1bits_t;
extern volatile ANCON1bits_t ANCON1bits __at(0xFC2);

# 12000
extern volatile unsigned short ADRES __at(0xFC3);

asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __at(0xFC3);

asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __at(0xFC4);

asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSP1CON2 __at(0xFC5);

asm("SSP1CON2 equ 0FC5h");


extern volatile unsigned char SSPCON2 __at(0xFC5);

asm("SSPCON2 equ 0FC5h");


typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
struct {
unsigned :1;
unsigned ADMSK1 :1;
unsigned ADMSK2 :1;
unsigned ADMSK3 :1;
unsigned ADMSK4 :1;
unsigned ADMSK5 :1;
};
struct {
unsigned SEN1 :1;
unsigned ADMSK11 :1;
unsigned ADMSK21 :1;
unsigned ADMSK31 :1;
unsigned ACKEN1 :1;
unsigned ACKDT1 :1;
unsigned ACKSTAT1 :1;
unsigned GCEN1 :1;
};
struct {
unsigned :1;
unsigned RSEN1 :1;
unsigned PEN1 :1;
unsigned RCEN1 :1;
unsigned ADMSK41 :1;
unsigned ADMSK51 :1;
};
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __at(0xFC5);

# 12202
typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
struct {
unsigned :1;
unsigned ADMSK1 :1;
unsigned ADMSK2 :1;
unsigned ADMSK3 :1;
unsigned ADMSK4 :1;
unsigned ADMSK5 :1;
};
struct {
unsigned SEN1 :1;
unsigned ADMSK11 :1;
unsigned ADMSK21 :1;
unsigned ADMSK31 :1;
unsigned ACKEN1 :1;
unsigned ACKDT1 :1;
unsigned ACKSTAT1 :1;
unsigned GCEN1 :1;
};
struct {
unsigned :1;
unsigned RSEN1 :1;
unsigned PEN1 :1;
unsigned RCEN1 :1;
unsigned ADMSK41 :1;
unsigned ADMSK51 :1;
};
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __at(0xFC5);

# 12375
extern volatile unsigned char SSP1CON1 __at(0xFC6);

asm("SSP1CON1 equ 0FC6h");


extern volatile unsigned char SSPCON1 __at(0xFC6);

asm("SSPCON1 equ 0FC6h");


typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
struct {
unsigned SSPM01 :1;
unsigned SSPM11 :1;
unsigned SSPM21 :1;
unsigned SSPM31 :1;
unsigned CKP1 :1;
unsigned SSPEN1 :1;
unsigned SSPOV1 :1;
unsigned WCOL1 :1;
};
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __at(0xFC6);

# 12498
typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
struct {
unsigned SSPM01 :1;
unsigned SSPM11 :1;
unsigned SSPM21 :1;
unsigned SSPM31 :1;
unsigned CKP1 :1;
unsigned SSPEN1 :1;
unsigned SSPOV1 :1;
unsigned WCOL1 :1;
};
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __at(0xFC6);

# 12613
extern volatile unsigned char SSP1STAT __at(0xFC7);

asm("SSP1STAT equ 0FC7h");


extern volatile unsigned char SSPSTAT __at(0xFC7);

asm("SSPSTAT equ 0FC7h");


typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned I2C_READ :1;
unsigned I2C_START :1;
unsigned I2C_STOP :1;
unsigned I2C_DAT :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :2;
unsigned READ_WRITE :1;
unsigned :2;
unsigned DATA_ADDRESS :1;
};
struct {
unsigned :2;
unsigned R :1;
unsigned :2;
unsigned D :1;
};
struct {
unsigned BF1 :1;
unsigned UA1 :1;
unsigned RW :1;
unsigned START :1;
unsigned STOP :1;
unsigned DA :1;
unsigned CKE1 :1;
unsigned SMP1 :1;
};
struct {
unsigned :2;
unsigned RW1 :1;
unsigned START1 :1;
unsigned STOP1 :1;
unsigned DA1 :1;
};
struct {
unsigned :2;
unsigned NOT_W :1;
};
struct {
unsigned :5;
unsigned NOT_A :1;
};
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __at(0xFC7);

# 12916
typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned I2C_READ :1;
unsigned I2C_START :1;
unsigned I2C_STOP :1;
unsigned I2C_DAT :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :2;
unsigned READ_WRITE :1;
unsigned :2;
unsigned DATA_ADDRESS :1;
};
struct {
unsigned :2;
unsigned R :1;
unsigned :2;
unsigned D :1;
};
struct {
unsigned BF1 :1;
unsigned UA1 :1;
unsigned RW :1;
unsigned START :1;
unsigned STOP :1;
unsigned DA :1;
unsigned CKE1 :1;
unsigned SMP1 :1;
};
struct {
unsigned :2;
unsigned RW1 :1;
unsigned START1 :1;
unsigned STOP1 :1;
unsigned DA1 :1;
};
struct {
unsigned :2;
unsigned NOT_W :1;
};
struct {
unsigned :5;
unsigned NOT_A :1;
};
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __at(0xFC7);

# 13211
extern volatile unsigned char SSP1ADD __at(0xFC8);

asm("SSP1ADD equ 0FC8h");


extern volatile unsigned char SSPADD __at(0xFC8);

asm("SSPADD equ 0FC8h");


typedef union {
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
struct {
unsigned MSK01 :1;
unsigned MSK11 :1;
unsigned MSK21 :1;
unsigned MSK31 :1;
unsigned MSK41 :1;
unsigned MSK51 :1;
unsigned MSK61 :1;
unsigned MSK71 :1;
};
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __at(0xFC8);

# 13326
typedef union {
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
struct {
unsigned MSK01 :1;
unsigned MSK11 :1;
unsigned MSK21 :1;
unsigned MSK31 :1;
unsigned MSK41 :1;
unsigned MSK51 :1;
unsigned MSK61 :1;
unsigned MSK71 :1;
};
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __at(0xFC8);

# 13433
extern volatile unsigned char SSP1MSK __at(0xFC8);

asm("SSP1MSK equ 0FC8h");


typedef union {
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __at(0xFC8);

# 13495
extern volatile unsigned char SSP1BUF __at(0xFC9);

asm("SSP1BUF equ 0FC9h");


extern volatile unsigned char SSPBUF __at(0xFC9);

asm("SSPBUF equ 0FC9h");




extern volatile unsigned char T2CON __at(0xFCA);

asm("T2CON equ 0FCAh");


typedef union {
struct {
unsigned T2CKPS :2;
unsigned TMR2ON :1;
unsigned TOUTPS :4;
};
struct {
unsigned T2CKPS0 :1;
unsigned T2CKPS1 :1;
unsigned :1;
unsigned T2OUTPS0 :1;
unsigned T2OUTPS1 :1;
unsigned T2OUTPS2 :1;
unsigned T2OUTPS3 :1;
};
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __at(0xFCA);

# 13578
extern volatile unsigned char PR2 __at(0xFCB);

asm("PR2 equ 0FCBh");


extern volatile unsigned char MEMCON __at(0xFCB);

asm("MEMCON equ 0FCBh");


typedef union {
struct {
unsigned :7;
unsigned EBDIS :1;
};
struct {
unsigned :4;
unsigned WAIT0 :1;
};
struct {
unsigned :5;
unsigned WAIT1 :1;
};
struct {
unsigned WM0 :1;
};
struct {
unsigned :1;
unsigned WM1 :1;
};
} PR2bits_t;
extern volatile PR2bits_t PR2bits __at(0xFCB);

# 13637
typedef union {
struct {
unsigned :7;
unsigned EBDIS :1;
};
struct {
unsigned :4;
unsigned WAIT0 :1;
};
struct {
unsigned :5;
unsigned WAIT1 :1;
};
struct {
unsigned WM0 :1;
};
struct {
unsigned :1;
unsigned WM1 :1;
};
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __at(0xFCB);

# 13688
extern volatile unsigned char TMR2 __at(0xFCC);

asm("TMR2 equ 0FCCh");




extern volatile unsigned char PADCFG1 __at(0xFCC);

asm("PADCFG1 equ 0FCCh");


typedef union {
struct {
unsigned PMPTL :1;
};
struct {
unsigned PMPTTL :1;
};
} PADCFG1bits_t;
extern volatile PADCFG1bits_t PADCFG1bits __at(0xFCC);

# 13723
extern volatile unsigned char T1CON __at(0xFCD);

asm("T1CON equ 0FCDh");


typedef union {
struct {
unsigned :2;
unsigned NOT_T1SYNC :1;
};
struct {
unsigned TMR1ON :1;
unsigned TMR1CS :1;
unsigned nT1SYNC :1;
unsigned T1OSCEN :1;
unsigned T1CKPS :2;
unsigned T1RUN :1;
unsigned RD16 :1;
};
struct {
unsigned :2;
unsigned T1SYNC :1;
unsigned :1;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
};
struct {
unsigned :2;
unsigned T1INSYNC :1;
};
struct {
unsigned :3;
unsigned SOSCEN :1;
unsigned :3;
unsigned T1RD16 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0xFCD);

# 13835
extern volatile unsigned char ODCON3 __at(0xFCD);

asm("ODCON3 equ 0FCDh");


typedef union {
struct {
unsigned SPI1OD :1;
unsigned SPI2OD :1;
};
} ODCON3bits_t;
extern volatile ODCON3bits_t ODCON3bits __at(0xFCD);

# 13861
extern volatile unsigned short TMR1 __at(0xFCE);

asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __at(0xFCE);

asm("TMR1L equ 0FCEh");




extern volatile unsigned char ODCON2 __at(0xFCE);

asm("ODCON2 equ 0FCEh");


typedef union {
struct {
unsigned USART1OD :1;
unsigned USART2OD :1;
};
struct {
unsigned U1OD :1;
unsigned U2OD :1;
};
} ODCON2bits_t;
extern volatile ODCON2bits_t ODCON2bits __at(0xFCE);

# 13915
extern volatile unsigned char TMR1H __at(0xFCF);

asm("TMR1H equ 0FCFh");




extern volatile unsigned char ODCON1 __at(0xFCF);

asm("ODCON1 equ 0FCFh");


typedef union {
struct {
unsigned ECCP1OD :1;
unsigned ECCP2OD :1;
unsigned ECCP3OD :1;
unsigned CCP4OD :1;
unsigned CCP5OD :1;
};
} ODCON1bits_t;
extern volatile ODCON1bits_t ODCON1bits __at(0xFCF);

# 13966
extern volatile unsigned char RCON __at(0xFD0);

asm("RCON equ 0FD0h");


typedef union {
struct {
unsigned NOT_BOR :1;
};
struct {
unsigned :1;
unsigned NOT_POR :1;
};
struct {
unsigned :2;
unsigned NOT_PD :1;
};
struct {
unsigned :3;
unsigned NOT_TO :1;
};
struct {
unsigned :4;
unsigned NOT_RI :1;
};
struct {
unsigned :5;
unsigned NOT_CM :1;
};
struct {
unsigned nBOR :1;
unsigned nPOR :1;
unsigned nPD :1;
unsigned nTO :1;
unsigned nRI :1;
unsigned nCM :1;
unsigned :1;
unsigned IPEN :1;
};
struct {
unsigned BOR :1;
unsigned POR :1;
unsigned PD :1;
unsigned TO :1;
unsigned RI :1;
unsigned CM :1;
};
} RCONbits_t;
extern volatile RCONbits_t RCONbits __at(0xFD0);

# 14114
extern volatile unsigned char CM2CON1 __at(0xFD1);

asm("CM2CON1 equ 0FD1h");


extern volatile unsigned char CM2CON __at(0xFD1);

asm("CM2CON equ 0FD1h");


typedef union {
struct {
unsigned CCH :2;
unsigned CREF :1;
unsigned EVPOL :2;
unsigned CPOL :1;
unsigned COE :1;
unsigned CON :1;
};
struct {
unsigned C1CH0 :1;
unsigned C1CH1 :1;
unsigned :1;
unsigned EVPOL0 :1;
unsigned EVPOL1 :1;
};
struct {
unsigned CCH0 :1;
unsigned CCH1 :1;
};
struct {
unsigned C1CH02 :1;
unsigned C1CH12 :1;
unsigned CREF2 :1;
unsigned EVPOL02 :1;
unsigned EVPOL12 :1;
unsigned CPOL2 :1;
unsigned COE2 :1;
unsigned CON2 :1;
};
struct {
unsigned CCH02 :1;
};
struct {
unsigned :1;
unsigned CCH12 :1;
};
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __at(0xFD1);

# 14275
typedef union {
struct {
unsigned CCH :2;
unsigned CREF :1;
unsigned EVPOL :2;
unsigned CPOL :1;
unsigned COE :1;
unsigned CON :1;
};
struct {
unsigned C1CH0 :1;
unsigned C1CH1 :1;
unsigned :1;
unsigned EVPOL0 :1;
unsigned EVPOL1 :1;
};
struct {
unsigned CCH0 :1;
unsigned CCH1 :1;
};
struct {
unsigned C1CH02 :1;
unsigned C1CH12 :1;
unsigned CREF2 :1;
unsigned EVPOL02 :1;
unsigned EVPOL12 :1;
unsigned CPOL2 :1;
unsigned COE2 :1;
unsigned CON2 :1;
};
struct {
unsigned CCH02 :1;
};
struct {
unsigned :1;
unsigned CCH12 :1;
};
} CM2CONbits_t;
extern volatile CM2CONbits_t CM2CONbits __at(0xFD1);

# 14428
extern volatile unsigned char CM1CON1 __at(0xFD2);

asm("CM1CON1 equ 0FD2h");


extern volatile unsigned char CM1CON __at(0xFD2);

asm("CM1CON equ 0FD2h");


typedef union {
struct {
unsigned CCH :2;
unsigned CREF :1;
unsigned EVPOL :2;
unsigned CPOL :1;
unsigned COE :1;
unsigned CON :1;
};
struct {
unsigned C1CH0 :1;
unsigned C1CH1 :1;
unsigned :1;
unsigned EVPOL0 :1;
unsigned EVPOL1 :1;
};
struct {
unsigned CCH0 :1;
unsigned CCH1 :1;
};
struct {
unsigned CCH01 :1;
};
struct {
unsigned :1;
unsigned CCH11 :1;
};
struct {
unsigned :6;
unsigned COE1 :1;
};
struct {
unsigned :7;
unsigned CON1 :1;
};
struct {
unsigned :5;
unsigned CPOL1 :1;
};
struct {
unsigned :2;
unsigned CREF1 :1;
};
struct {
unsigned :3;
unsigned EVPOL01 :1;
};
struct {
unsigned :4;
unsigned EVPOL11 :1;
};
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __at(0xFD2);

# 14593
typedef union {
struct {
unsigned CCH :2;
unsigned CREF :1;
unsigned EVPOL :2;
unsigned CPOL :1;
unsigned COE :1;
unsigned CON :1;
};
struct {
unsigned C1CH0 :1;
unsigned C1CH1 :1;
unsigned :1;
unsigned EVPOL0 :1;
unsigned EVPOL1 :1;
};
struct {
unsigned CCH0 :1;
unsigned CCH1 :1;
};
struct {
unsigned CCH01 :1;
};
struct {
unsigned :1;
unsigned CCH11 :1;
};
struct {
unsigned :6;
unsigned COE1 :1;
};
struct {
unsigned :7;
unsigned CON1 :1;
};
struct {
unsigned :5;
unsigned CPOL1 :1;
};
struct {
unsigned :2;
unsigned CREF1 :1;
};
struct {
unsigned :3;
unsigned EVPOL01 :1;
};
struct {
unsigned :4;
unsigned EVPOL11 :1;
};
} CM1CONbits_t;
extern volatile CM1CONbits_t CM1CONbits __at(0xFD2);

# 14750
extern volatile unsigned char OSCCON __at(0xFD3);

asm("OSCCON equ 0FD3h");


typedef union {
struct {
unsigned SCS :2;
unsigned :1;
unsigned OSTS :1;
unsigned IRCF :3;
unsigned IDLEN :1;
};
struct {
unsigned SCS0 :1;
unsigned SCS1 :1;
unsigned :2;
unsigned IRCF0 :1;
unsigned IRCF1 :1;
unsigned IRCF2 :1;
};
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __at(0xFD3);

# 14822
extern volatile unsigned char REFOCON __at(0xFD3);

asm("REFOCON equ 0FD3h");


typedef union {
struct {
unsigned RODIV :4;
unsigned ROSEL :1;
unsigned ROSSLP :1;
unsigned :1;
unsigned ROON :1;
};
struct {
unsigned RODIV0 :1;
unsigned RODIV1 :1;
unsigned RODIV2 :1;
unsigned RODIV3 :1;
};
} REFOCONbits_t;
extern volatile REFOCONbits_t REFOCONbits __at(0xFD3);

# 14887
extern volatile unsigned char T0CON __at(0xFD5);

asm("T0CON equ 0FD5h");


typedef union {
struct {
unsigned T0PS :3;
unsigned PSA :1;
unsigned T0SE :1;
unsigned T0CS :1;
unsigned T08BIT :1;
unsigned TMR0ON :1;
};
struct {
unsigned T0PS0 :1;
unsigned T0PS1 :1;
unsigned T0PS2 :1;
unsigned T0PS3 :1;
};
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __at(0xFD5);

# 14963
extern volatile unsigned short TMR0 __at(0xFD6);

asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __at(0xFD6);

asm("TMR0L equ 0FD6h");




extern volatile unsigned char TMR0H __at(0xFD7);

asm("TMR0H equ 0FD7h");




extern volatile unsigned char STATUS __at(0xFD8);

asm("STATUS equ 0FD8h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned OV :1;
unsigned N :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
unsigned OVERFLOW :1;
unsigned NEGATIVE :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0xFD8);

# 15055
extern volatile unsigned short FSR2 __at(0xFD9);

asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __at(0xFD9);

asm("FSR2L equ 0FD9h");




extern volatile unsigned char FSR2H __at(0xFDA);

asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __at(0xFDB);

asm("PLUSW2 equ 0FDBh");




extern volatile unsigned char PREINC2 __at(0xFDC);

asm("PREINC2 equ 0FDCh");




extern volatile unsigned char POSTDEC2 __at(0xFDD);

asm("POSTDEC2 equ 0FDDh");




extern volatile unsigned char POSTINC2 __at(0xFDE);

asm("POSTINC2 equ 0FDEh");




extern volatile unsigned char INDF2 __at(0xFDF);

asm("INDF2 equ 0FDFh");




extern volatile unsigned char BSR __at(0xFE0);

asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __at(0xFE1);

asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __at(0xFE1);

asm("FSR1L equ 0FE1h");




extern volatile unsigned char FSR1H __at(0xFE2);

asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __at(0xFE3);

asm("PLUSW1 equ 0FE3h");




extern volatile unsigned char PREINC1 __at(0xFE4);

asm("PREINC1 equ 0FE4h");




extern volatile unsigned char POSTDEC1 __at(0xFE5);

asm("POSTDEC1 equ 0FE5h");




extern volatile unsigned char POSTINC1 __at(0xFE6);

asm("POSTINC1 equ 0FE6h");




extern volatile unsigned char INDF1 __at(0xFE7);

asm("INDF1 equ 0FE7h");




extern volatile unsigned char WREG __at(0xFE8);

asm("WREG equ 0FE8h");




extern volatile unsigned short FSR0 __at(0xFE9);

asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __at(0xFE9);

asm("FSR0L equ 0FE9h");




extern volatile unsigned char FSR0H __at(0xFEA);

asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __at(0xFEB);

asm("PLUSW0 equ 0FEBh");




extern volatile unsigned char PREINC0 __at(0xFEC);

asm("PREINC0 equ 0FECh");




extern volatile unsigned char POSTDEC0 __at(0xFED);

asm("POSTDEC0 equ 0FEDh");




extern volatile unsigned char POSTINC0 __at(0xFEE);

asm("POSTINC0 equ 0FEEh");




extern volatile unsigned char INDF0 __at(0xFEF);

asm("INDF0 equ 0FEFh");




extern volatile unsigned char INTCON3 __at(0xFF0);

asm("INTCON3 equ 0FF0h");


typedef union {
struct {
unsigned INT1IF :1;
unsigned INT2IF :1;
unsigned INT3IF :1;
unsigned INT1IE :1;
unsigned INT2IE :1;
unsigned INT3IE :1;
unsigned INT1IP :1;
unsigned INT2IP :1;
};
struct {
unsigned INT1F :1;
unsigned INT2F :1;
unsigned INT3F :1;
unsigned INT1E :1;
unsigned INT2E :1;
unsigned INT3E :1;
unsigned INT1P :1;
unsigned INT2P :1;
};
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __at(0xFF0);

# 15349
extern volatile unsigned char INTCON2 __at(0xFF1);

asm("INTCON2 equ 0FF1h");


typedef union {
struct {
unsigned :7;
unsigned NOT_RBPU :1;
};
struct {
unsigned RBIP :1;
unsigned INT3IP :1;
unsigned TMR0IP :1;
unsigned INTEDG3 :1;
unsigned INTEDG2 :1;
unsigned INTEDG1 :1;
unsigned INTEDG0 :1;
unsigned nRBPU :1;
};
struct {
unsigned :1;
unsigned INT3P :1;
unsigned T0IP :1;
unsigned :4;
unsigned RBPU :1;
};
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __at(0xFF1);

# 15442
extern volatile unsigned char INTCON __at(0xFF2);

asm("INTCON equ 0FF2h");


typedef union {
struct {
unsigned RBIF :1;
unsigned INT0IF :1;
unsigned TMR0IF :1;
unsigned RBIE :1;
unsigned INT0IE :1;
unsigned TMR0IE :1;
unsigned PEIE_GIEL :1;
unsigned GIE_GIEH :1;
};
struct {
unsigned :1;
unsigned INT0F :1;
unsigned T0IF :1;
unsigned :1;
unsigned INT0E :1;
unsigned T0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :6;
unsigned GIEL :1;
unsigned GIEH :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0xFF2);

# 15559
extern volatile unsigned short PROD __at(0xFF3);

asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __at(0xFF3);

asm("PRODL equ 0FF3h");




extern volatile unsigned char PRODH __at(0xFF4);

asm("PRODH equ 0FF4h");




extern volatile unsigned char TABLAT __at(0xFF5);

asm("TABLAT equ 0FF5h");

# 15588
extern volatile __uint24 TBLPTR __at(0xFF6);


asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __at(0xFF6);

asm("TBLPTRL equ 0FF6h");




extern volatile unsigned char TBLPTRH __at(0xFF7);

asm("TBLPTRH equ 0FF7h");




extern volatile unsigned char TBLPTRU __at(0xFF8);

asm("TBLPTRU equ 0FF8h");

# 15618
extern volatile __uint24 PCLAT __at(0xFF9);


asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __at(0xFF9);


asm("PC equ 0FF9h");




extern volatile unsigned char PCL __at(0xFF9);

asm("PCL equ 0FF9h");




extern volatile unsigned char PCLATH __at(0xFFA);

asm("PCLATH equ 0FFAh");




extern volatile unsigned char PCLATU __at(0xFFB);

asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __at(0xFFC);

asm("STKPTR equ 0FFCh");


typedef union {
struct {
unsigned STKPTR :5;
unsigned :1;
unsigned STKUNF :1;
unsigned STKFUL :1;
};
struct {
unsigned STKPTR0 :1;
unsigned STKPTR1 :1;
unsigned STKPTR2 :1;
unsigned STKPTR3 :1;
unsigned STKPTR4 :1;
unsigned :2;
unsigned STKOVF :1;
};
struct {
unsigned SP0 :1;
unsigned SP1 :1;
unsigned SP2 :1;
unsigned SP3 :1;
unsigned SP4 :1;
};
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __at(0xFFC);

# 15759
extern volatile __uint24 TOS __at(0xFFD);


asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __at(0xFFD);

asm("TOSL equ 0FFDh");




extern volatile unsigned char TOSH __at(0xFFE);

asm("TOSH equ 0FFEh");




extern volatile unsigned char TOSU __at(0xFFF);

asm("TOSU equ 0FFFh");

# 15798
extern volatile __bit __attribute__((__deprecated__)) ABDEN __at(0x7BF0);


extern volatile __bit ABDEN1 __at(0x7BF0);


extern volatile __bit ABDEN2 __at(0x7BE0);


extern volatile __bit __attribute__((__deprecated__)) ABDOVF __at(0x7BF7);


extern volatile __bit ABDOVF1 __at(0x7BF7);


extern volatile __bit ABDOVF2 __at(0x7BE7);


extern volatile __bit __attribute__((__deprecated__)) ACKDT __at(0x7E2D);


extern volatile __bit ACKDT1 __at(0x7E2D);


extern volatile __bit ACKDT2 __at(0x7B5D);


extern volatile __bit __attribute__((__deprecated__)) ACKEN __at(0x7E2C);


extern volatile __bit ACKEN1 __at(0x7E2C);


extern volatile __bit ACKEN2 __at(0x7B5C);


extern volatile __bit __attribute__((__deprecated__)) ACKSTAT __at(0x7E2E);


extern volatile __bit ACKSTAT1 __at(0x7E2E);


extern volatile __bit ACKSTAT2 __at(0x7B5E);


extern volatile __bit ACQT0 __at(0x7E0B);


extern volatile __bit ACQT1 __at(0x7E0C);


extern volatile __bit ACQT2 __at(0x7E0D);


extern volatile __bit ACTVIE __at(0x7AE2);


extern volatile __bit ACTVIF __at(0x7B12);


extern volatile __bit __attribute__((__deprecated__)) ADCAL __at(0x7E0E);


extern volatile __bit ADCS0 __at(0x7E08);


extern volatile __bit ADCS1 __at(0x7E09);


extern volatile __bit ADCS2 __at(0x7E0A);


extern volatile __bit __attribute__((__deprecated__)) ADDEN __at(0x7D63);


extern volatile __bit ADDEN1 __at(0x7D63);


extern volatile __bit ADDEN2 __at(0x7CE3);


extern volatile __bit ADDR0 __at(0x7AF0);


extern volatile __bit ADDR1 __at(0x7AF1);


extern volatile __bit ADDR2 __at(0x7AF2);


extern volatile __bit ADDR3 __at(0x7AF3);


extern volatile __bit ADDR4 __at(0x7AF4);


extern volatile __bit ADDR5 __at(0x7AF5);


extern volatile __bit ADDR6 __at(0x7AF6);


extern volatile __bit ADFM __at(0x7E0F);


extern volatile __bit ADIE __at(0x7CEE);


extern volatile __bit ADIF __at(0x7CF6);


extern volatile __bit ADIP __at(0x7CFE);


extern volatile __bit __attribute__((__deprecated__)) ADMSK1 __at(0x7E29);


extern volatile __bit ADMSK11 __at(0x7E29);


extern volatile __bit ADMSK12 __at(0x7B59);


extern volatile __bit __attribute__((__deprecated__)) ADMSK2 __at(0x7E2A);


extern volatile __bit ADMSK21 __at(0x7E2A);


extern volatile __bit ADMSK22 __at(0x7B5A);


extern volatile __bit __attribute__((__deprecated__)) ADMSK3 __at(0x7E2B);


extern volatile __bit ADMSK31 __at(0x7E2B);


extern volatile __bit ADMSK32 __at(0x7B5B);


extern volatile __bit __attribute__((__deprecated__)) ADMSK4 __at(0x7E2C);


extern volatile __bit ADMSK41 __at(0x7E2C);


extern volatile __bit ADMSK42 __at(0x7B5C);


extern volatile __bit __attribute__((__deprecated__)) ADMSK5 __at(0x7E2D);


extern volatile __bit ADMSK51 __at(0x7E2D);


extern volatile __bit ADMSK52 __at(0x7B5D);


extern volatile __bit ADON __at(0x7E10);


extern volatile __bit ADRMUX0 __at(0x7A5B);


extern volatile __bit ADRMUX1 __at(0x7A5C);


extern volatile __bit ADSHR __at(0x7E04);


extern volatile __bit ALP __at(0x7A55);


extern volatile __bit AN0 __at(0x7C00);


extern volatile __bit AN1 __at(0x7C01);


extern volatile __bit AN10 __at(0x7C2D);


extern volatile __bit AN11 __at(0x7C2E);


extern volatile __bit AN2 __at(0x7C02);


extern volatile __bit AN3 __at(0x7C03);


extern volatile __bit AN4 __at(0x7C05);


extern volatile __bit AN7 __at(0x7C2A);


extern volatile __bit BCL1IE __at(0x7D03);


extern volatile __bit BCL1IF __at(0x7D0B);


extern volatile __bit BCL1IP __at(0x7D13);


extern volatile __bit BCL2IE __at(0x7D1E);


extern volatile __bit BCL2IF __at(0x7D26);


extern volatile __bit BCL2IP __at(0x7D2E);


extern volatile __bit BCLIE __at(0x7D03);


extern volatile __bit BCLIF __at(0x7D0B);


extern volatile __bit BCLIP __at(0x7D13);


extern volatile __bit BEP __at(0x7A52);


extern volatile __bit __attribute__((__deprecated__)) BF __at(0x7E38);


extern volatile __bit BF1 __at(0x7E38);


extern volatile __bit BF2 __at(0x7B68);


extern volatile __bit BOR __at(0x7E80);


extern volatile __bit __attribute__((__deprecated__)) BRG16 __at(0x7BF3);


extern volatile __bit BRG161 __at(0x7BF3);


extern volatile __bit BRG162 __at(0x7BE3);


extern volatile __bit __attribute__((__deprecated__)) BRGH __at(0x7D6A);


extern volatile __bit BRGH1 __at(0x7D6A);


extern volatile __bit BRGH2 __at(0x7D42);


extern volatile __bit BTOEE __at(0x7AEC);


extern volatile __bit BTOEF __at(0x7B1C);


extern volatile __bit BTSEE __at(0x7AEF);


extern volatile __bit BTSEF __at(0x7B1F);


extern volatile __bit BUSY __at(0x7A4F);


extern volatile __bit __attribute__((__deprecated__)) C1CH0 __at(0x7E90);


extern volatile __bit C1CH02 __at(0x7E88);


extern volatile __bit __attribute__((__deprecated__)) C1CH1 __at(0x7E91);


extern volatile __bit C1CH12 __at(0x7E89);


extern volatile __bit C1INA __at(0x7C2E);


extern volatile __bit C1INB __at(0x7C2D);


extern volatile __bit C1OUT __at(0x7C2F);


extern volatile __bit C1OUTF __at(0x7C2A);


extern volatile __bit C2INA __at(0x7C05);


extern volatile __bit C2INB __at(0x7C2A);


extern volatile __bit C2OUT __at(0x7C15);


extern volatile __bit C3OUTG __at(0x7C31);


extern volatile __bit CARRY __at(0x7EC0);


extern volatile __bit CCH01 __at(0x7E90);


extern volatile __bit CCH02 __at(0x7E88);


extern volatile __bit CCH11 __at(0x7E91);


extern volatile __bit CCH12 __at(0x7E89);


extern volatile __bit CCP1 __at(0x7C12);


extern volatile __bit CCP10 __at(0x7C22);


extern volatile __bit CCP1IE __at(0x7CEA);


extern volatile __bit CCP1IF __at(0x7CF2);


extern volatile __bit CCP1IP __at(0x7CFA);


extern volatile __bit CCP1M0 __at(0x7DD8);


extern volatile __bit CCP1M1 __at(0x7DD9);


extern volatile __bit CCP1M2 __at(0x7DDA);


extern volatile __bit CCP1M3 __at(0x7DDB);


extern volatile __bit CCP1X __at(0x7DDD);


extern volatile __bit CCP1Y __at(0x7DDC);


extern volatile __bit CCP2E __at(0x7C27);


extern volatile __bit CCP2IE __at(0x7D00);


extern volatile __bit CCP2IF __at(0x7D08);


extern volatile __bit CCP2IP __at(0x7D10);


extern volatile __bit CCP2M0 __at(0x7DB0);


extern volatile __bit CCP2M1 __at(0x7DB1);


extern volatile __bit CCP2M2 __at(0x7DB2);


extern volatile __bit CCP2M3 __at(0x7DB3);


extern volatile __bit CCP2X __at(0x7DB5);


extern volatile __bit CCP2Y __at(0x7DB4);


extern volatile __bit CCP2_PA2 __at(0x7C0B);


extern volatile __bit CCP3 __at(0x7C30);


extern volatile __bit CCP3IE __at(0x7D18);


extern volatile __bit CCP3IF __at(0x7D20);


extern volatile __bit CCP3IP __at(0x7D28);


extern volatile __bit CCP3M0 __at(0x7D88);


extern volatile __bit CCP3M1 __at(0x7D89);


extern volatile __bit CCP3M2 __at(0x7D8A);


extern volatile __bit CCP3M3 __at(0x7D8B);


extern volatile __bit CCP3X __at(0x7D8D);


extern volatile __bit CCP3Y __at(0x7D8C);


extern volatile __bit CCP4 __at(0x7C33);


extern volatile __bit CCP4IE __at(0x7D19);


extern volatile __bit CCP4IF __at(0x7D21);


extern volatile __bit CCP4IP __at(0x7D29);


extern volatile __bit CCP4M0 __at(0x7B98);


extern volatile __bit CCP4M1 __at(0x7B99);


extern volatile __bit CCP4M2 __at(0x7B9A);


extern volatile __bit CCP4M3 __at(0x7B9B);


extern volatile __bit CCP4OD __at(0x7E7B);


extern volatile __bit CCP5 __at(0x7C34);


extern volatile __bit CCP5IE __at(0x7D1A);


extern volatile __bit CCP5IF __at(0x7D22);


extern volatile __bit CCP5IP __at(0x7D2A);


extern volatile __bit CCP5M0 __at(0x7B80);


extern volatile __bit CCP5M1 __at(0x7B81);


extern volatile __bit CCP5M2 __at(0x7B82);


extern volatile __bit CCP5M3 __at(0x7B83);


extern volatile __bit CCP5OD __at(0x7E7C);


extern volatile __bit CCP6E __at(0x7C26);


extern volatile __bit CCP7E __at(0x7C25);


extern volatile __bit CCP8E __at(0x7C24);


extern volatile __bit CCP9E __at(0x7C23);


extern volatile __bit CHS0 __at(0x7E12);


extern volatile __bit CHS1 __at(0x7E13);


extern volatile __bit CHS2 __at(0x7E14);


extern volatile __bit CHS3 __at(0x7E15);


extern volatile __bit CHSN3 __at(0x7E0B);


extern volatile __bit CK __at(0x7C16);


extern volatile __bit CK2 __at(0x7C31);


extern volatile __bit __attribute__((__deprecated__)) CKE __at(0x7E3E);


extern volatile __bit CKE1 __at(0x7E3E);


extern volatile __bit CKE2 __at(0x7B6E);


extern volatile __bit __attribute__((__deprecated__)) CKP __at(0x7E34);


extern volatile __bit CKP1 __at(0x7E34);


extern volatile __bit CKP2 __at(0x7B64);


extern volatile __bit CKTXP __at(0x7BF4);


extern volatile __bit CLKO __at(0x7C06);


extern volatile __bit CM __at(0x7E85);


extern volatile __bit CM1IE __at(0x7D05);


extern volatile __bit CM1IF __at(0x7D0D);


extern volatile __bit CM1IP __at(0x7D15);


extern volatile __bit CM2IE __at(0x7D06);


extern volatile __bit CM2IF __at(0x7D0E);


extern volatile __bit CM2IP __at(0x7D16);


extern volatile __bit CMIE __at(0x7D06);


extern volatile __bit CMIF __at(0x7D0E);


extern volatile __bit CMIP __at(0x7D16);


extern volatile __bit __attribute__((__deprecated__)) COE __at(0x7E96);


extern volatile __bit COE1 __at(0x7E96);


extern volatile __bit COE2 __at(0x7E8E);


extern volatile __bit __attribute__((__deprecated__)) CON __at(0x7E97);


extern volatile __bit CON1 __at(0x7E97);


extern volatile __bit CON2 __at(0x7E8F);


extern volatile __bit COUT1 __at(0x7B50);


extern volatile __bit COUT2 __at(0x7B51);


extern volatile __bit __attribute__((__deprecated__)) CPOL __at(0x7E95);


extern volatile __bit CPOL1 __at(0x7E95);


extern volatile __bit CPOL2 __at(0x7E8D);


extern volatile __bit CRC16EE __at(0x7AEA);


extern volatile __bit CRC16EF __at(0x7B1A);


extern volatile __bit CRC5EE __at(0x7AE9);


extern volatile __bit CRC5EF __at(0x7B19);


extern volatile __bit __attribute__((__deprecated__)) CREF __at(0x7E92);


extern volatile __bit CREF1 __at(0x7E92);


extern volatile __bit CREF2 __at(0x7E8A);


extern volatile __bit __attribute__((__deprecated__)) CREN __at(0x7D64);


extern volatile __bit CREN1 __at(0x7D64);


extern volatile __bit CREN2 __at(0x7CE4);


extern volatile __bit CS __at(0x7C22);


extern volatile __bit CS1 __at(0x7B4E);


extern volatile __bit CS1P __at(0x7A53);


extern volatile __bit CS2 __at(0x7B4F);


extern volatile __bit CS2P __at(0x7A54);


extern volatile __bit CSF0 __at(0x7A56);


extern volatile __bit CSF1 __at(0x7A57);


extern volatile __bit __attribute__((__deprecated__)) CSRC __at(0x7D6F);


extern volatile __bit CSRC1 __at(0x7D6F);


extern volatile __bit CSRC2 __at(0x7D47);


extern volatile __bit CVR0 __at(0x7BB8);


extern volatile __bit CVR1 __at(0x7BB9);


extern volatile __bit CVR2 __at(0x7BBA);


extern volatile __bit CVR3 __at(0x7BBB);


extern volatile __bit CVREF __at(0x7C2D);


extern volatile __bit CVREN __at(0x7BBF);


extern volatile __bit CVROE __at(0x7BBE);


extern volatile __bit CVROEN __at(0x7BBE);


extern volatile __bit CVRR __at(0x7BBD);


extern volatile __bit CVRSS __at(0x7BBC);


extern volatile __bit DA __at(0x7E3D);


extern volatile __bit DA1 __at(0x7E3D);


extern volatile __bit DA2 __at(0x7B6D);


extern volatile __bit DATA_ADDRESS2 __at(0x7B6D);


extern volatile __bit DC __at(0x7EC1);


extern volatile __bit DC1B0 __at(0x7DDC);


extern volatile __bit DC1B1 __at(0x7DDD);


extern volatile __bit DC2B0 __at(0x7DB4);


extern volatile __bit DC2B1 __at(0x7DB5);


extern volatile __bit DC3B0 __at(0x7D8C);


extern volatile __bit DC3B1 __at(0x7D8D);


extern volatile __bit DC4B0 __at(0x7B9C);


extern volatile __bit DC4B1 __at(0x7B9D);


extern volatile __bit DC4X __at(0x7B9D);


extern volatile __bit DC4Y __at(0x7B9C);


extern volatile __bit DC5B0 __at(0x7B84);


extern volatile __bit DC5B1 __at(0x7B85);


extern volatile __bit DC5X __at(0x7B85);


extern volatile __bit DC5Y __at(0x7B84);


extern volatile __bit DCCP4X __at(0x7B9D);


extern volatile __bit DCCP4Y __at(0x7B9C);


extern volatile __bit DCCP5X __at(0x7B85);


extern volatile __bit DCCP5Y __at(0x7B84);


extern volatile __bit DEVCFG __at(0x7E04);


extern volatile __bit DFN8EE __at(0x7AEB);


extern volatile __bit DFN8EF __at(0x7B1B);


extern volatile __bit DIR __at(0x7B22);


extern volatile __bit DONE __at(0x7E11);


extern volatile __bit DT __at(0x7C17);


extern volatile __bit DT2 __at(0x7C32);


extern volatile __bit __attribute__((__deprecated__)) DTRXP __at(0x7BF5);


extern volatile __bit DTRXP1 __at(0x7BF5);


extern volatile __bit DTRXP2 __at(0x7BE5);


extern volatile __bit D_A2 __at(0x7B6D);


extern volatile __bit D_NOT_A2 __at(0x7B6D);


extern volatile __bit D_nA2 __at(0x7B6D);


extern volatile __bit EBDIS __at(0x7E5F);


extern volatile __bit ECCP1AS0 __at(0x7DFC);


extern volatile __bit ECCP1AS1 __at(0x7DFD);


extern volatile __bit ECCP1AS2 __at(0x7DFE);


extern volatile __bit ECCP1ASE __at(0x7DFF);


extern volatile __bit ECCP1OD __at(0x7E78);


extern volatile __bit ECCP2AS0 __at(0x7DD4);


extern volatile __bit ECCP2AS1 __at(0x7DD5);


extern volatile __bit ECCP2AS2 __at(0x7DD6);


extern volatile __bit ECCP2ASE __at(0x7DD7);


extern volatile __bit ECCP2OD __at(0x7E79);


extern volatile __bit ECCP3AS0 __at(0x7DAC);


extern volatile __bit ECCP3AS1 __at(0x7DAD);


extern volatile __bit ECCP3AS2 __at(0x7DAE);


extern volatile __bit ECCP3ASE __at(0x7DAF);


extern volatile __bit ECCP3OD __at(0x7E7A);


extern volatile __bit ENDP0 __at(0x7B23);


extern volatile __bit ENDP1 __at(0x7B24);


extern volatile __bit ENDP2 __at(0x7B25);


extern volatile __bit ENDP3 __at(0x7B26);


extern volatile __bit EP0CONDIS __at(0x7A63);


extern volatile __bit EP0HSHK __at(0x7A64);


extern volatile __bit EP0INEN __at(0x7A61);


extern volatile __bit EP0OUTEN __at(0x7A62);


extern volatile __bit EP0STALL __at(0x7A60);


extern volatile __bit EP1CONDIS __at(0x7A6B);


extern volatile __bit EP1HSHK __at(0x7A6C);


extern volatile __bit EP1INEN __at(0x7A69);


extern volatile __bit EP1OUTEN __at(0x7A6A);


extern volatile __bit EP1STALL __at(0x7A68);


extern volatile __bit EP2CONDIS __at(0x7A73);


extern volatile __bit EP2HSHK __at(0x7A74);


extern volatile __bit EP2INEN __at(0x7A71);


extern volatile __bit EP2OUTEN __at(0x7A72);


extern volatile __bit EP2STALL __at(0x7A70);


extern volatile __bit EP3CONDIS __at(0x7A7B);


extern volatile __bit EP3HSHK __at(0x7A7C);


extern volatile __bit EP3INEN __at(0x7A79);


extern volatile __bit EP3OUTEN __at(0x7A7A);


extern volatile __bit EP3STALL __at(0x7A78);


extern volatile __bit EP4CONDIS __at(0x7A83);


extern volatile __bit EP4HSHK __at(0x7A84);


extern volatile __bit EP4INEN __at(0x7A81);


extern volatile __bit EP4OUTEN __at(0x7A82);


extern volatile __bit EP4STALL __at(0x7A80);


extern volatile __bit EP5CONDIS __at(0x7A8B);


extern volatile __bit EP5HSHK __at(0x7A8C);


extern volatile __bit EP5INEN __at(0x7A89);


extern volatile __bit EP5OUTEN __at(0x7A8A);


extern volatile __bit EP5STALL __at(0x7A88);


extern volatile __bit EP6CONDIS __at(0x7A93);


extern volatile __bit EP6HSHK __at(0x7A94);


extern volatile __bit EP6INEN __at(0x7A91);


extern volatile __bit EP6OUTEN __at(0x7A92);


extern volatile __bit EP6STALL __at(0x7A90);


extern volatile __bit EP7CONDIS __at(0x7A9B);


extern volatile __bit EP7HSHK __at(0x7A9C);


extern volatile __bit EP7INEN __at(0x7A99);


extern volatile __bit EP7OUTEN __at(0x7A9A);


extern volatile __bit EP7STALL __at(0x7A98);


extern volatile __bit EPCONDIS0 __at(0x7A63);


extern volatile __bit EPCONDIS1 __at(0x7A6B);


extern volatile __bit EPCONDIS10 __at(0x7AB3);


extern volatile __bit EPCONDIS11 __at(0x7ABB);


extern volatile __bit EPCONDIS12 __at(0x7AC3);


extern volatile __bit EPCONDIS13 __at(0x7ACB);


extern volatile __bit EPCONDIS14 __at(0x7AD3);


extern volatile __bit EPCONDIS15 __at(0x7ADB);


extern volatile __bit EPCONDIS2 __at(0x7A73);


extern volatile __bit EPCONDIS3 __at(0x7A7B);


extern volatile __bit EPCONDIS4 __at(0x7A83);


extern volatile __bit EPCONDIS5 __at(0x7A8B);


extern volatile __bit EPCONDIS6 __at(0x7A93);


extern volatile __bit EPCONDIS7 __at(0x7A9B);


extern volatile __bit EPCONDIS8 __at(0x7AA3);


extern volatile __bit EPCONDIS9 __at(0x7AAB);


extern volatile __bit EPHSHK0 __at(0x7A64);


extern volatile __bit EPHSHK1 __at(0x7A6C);


extern volatile __bit EPHSHK10 __at(0x7AB4);


extern volatile __bit EPHSHK11 __at(0x7ABC);


extern volatile __bit EPHSHK12 __at(0x7AC4);


extern volatile __bit EPHSHK13 __at(0x7ACC);


extern volatile __bit EPHSHK14 __at(0x7AD4);


extern volatile __bit EPHSHK15 __at(0x7ADC);


extern volatile __bit EPHSHK2 __at(0x7A74);


extern volatile __bit EPHSHK3 __at(0x7A7C);


extern volatile __bit EPHSHK4 __at(0x7A84);


extern volatile __bit EPHSHK5 __at(0x7A8C);


extern volatile __bit EPHSHK6 __at(0x7A94);


extern volatile __bit EPHSHK7 __at(0x7A9C);


extern volatile __bit EPHSHK8 __at(0x7AA4);


extern volatile __bit EPHSHK9 __at(0x7AAC);


extern volatile __bit EPINEN0 __at(0x7A61);


extern volatile __bit EPINEN1 __at(0x7A69);


extern volatile __bit EPINEN10 __at(0x7AB1);


extern volatile __bit EPINEN11 __at(0x7AB9);


extern volatile __bit EPINEN12 __at(0x7AC1);


extern volatile __bit EPINEN13 __at(0x7AC9);


extern volatile __bit EPINEN14 __at(0x7AD1);


extern volatile __bit EPINEN15 __at(0x7AD9);


extern volatile __bit EPINEN2 __at(0x7A71);


extern volatile __bit EPINEN3 __at(0x7A79);


extern volatile __bit EPINEN4 __at(0x7A81);


extern volatile __bit EPINEN5 __at(0x7A89);


extern volatile __bit EPINEN6 __at(0x7A91);


extern volatile __bit EPINEN7 __at(0x7A99);


extern volatile __bit EPINEN8 __at(0x7AA1);


extern volatile __bit EPINEN9 __at(0x7AA9);


extern volatile __bit EPOUTEN0 __at(0x7A62);


extern volatile __bit EPOUTEN1 __at(0x7A6A);


extern volatile __bit EPOUTEN10 __at(0x7AB2);


extern volatile __bit EPOUTEN11 __at(0x7ABA);


extern volatile __bit EPOUTEN12 __at(0x7AC2);


extern volatile __bit EPOUTEN13 __at(0x7ACA);


extern volatile __bit EPOUTEN14 __at(0x7AD2);


extern volatile __bit EPOUTEN15 __at(0x7ADA);


extern volatile __bit EPOUTEN2 __at(0x7A72);


extern volatile __bit EPOUTEN3 __at(0x7A7A);


extern volatile __bit EPOUTEN4 __at(0x7A82);


extern volatile __bit EPOUTEN5 __at(0x7A8A);


extern volatile __bit EPOUTEN6 __at(0x7A92);


extern volatile __bit EPOUTEN7 __at(0x7A9A);


extern volatile __bit EPOUTEN8 __at(0x7AA2);


extern volatile __bit EPOUTEN9 __at(0x7AAA);


extern volatile __bit EPSTALL0 __at(0x7A60);


extern volatile __bit EPSTALL1 __at(0x7A68);


extern volatile __bit EPSTALL10 __at(0x7AB0);


extern volatile __bit EPSTALL11 __at(0x7AB8);


extern volatile __bit EPSTALL12 __at(0x7AC0);


extern volatile __bit EPSTALL13 __at(0x7AC8);


extern volatile __bit EPSTALL14 __at(0x7AD0);


extern volatile __bit EPSTALL15 __at(0x7AD8);


extern volatile __bit EPSTALL2 __at(0x7A70);


extern volatile __bit EPSTALL3 __at(0x7A78);


extern volatile __bit EPSTALL4 __at(0x7A80);


extern volatile __bit EPSTALL5 __at(0x7A88);


extern volatile __bit EPSTALL6 __at(0x7A90);


extern volatile __bit EPSTALL7 __at(0x7A98);


extern volatile __bit EPSTALL8 __at(0x7AA0);


extern volatile __bit EPSTALL9 __at(0x7AA8);


extern volatile __bit __attribute__((__deprecated__)) EVPOL0 __at(0x7E93);


extern volatile __bit EVPOL01 __at(0x7E93);


extern volatile __bit EVPOL02 __at(0x7E8B);


extern volatile __bit __attribute__((__deprecated__)) EVPOL1 __at(0x7E94);


extern volatile __bit EVPOL11 __at(0x7E94);


extern volatile __bit EVPOL12 __at(0x7E8C);


extern volatile __bit __attribute__((__deprecated__)) FERR __at(0x7D62);


extern volatile __bit FERR1 __at(0x7D62);


extern volatile __bit FERR2 __at(0x7CE2);


extern volatile __bit FLT0 __at(0x7C08);


extern volatile __bit FREE __at(0x7D34);


extern volatile __bit FRM0 __at(0x7B00);


extern volatile __bit FRM1 __at(0x7B01);


extern volatile __bit FRM10 __at(0x7B0A);


extern volatile __bit FRM2 __at(0x7B02);


extern volatile __bit FRM3 __at(0x7B03);


extern volatile __bit FRM4 __at(0x7B04);


extern volatile __bit FRM5 __at(0x7B05);


extern volatile __bit FRM6 __at(0x7B06);


extern volatile __bit FRM7 __at(0x7B07);


extern volatile __bit FRM8 __at(0x7B08);


extern volatile __bit FRM9 __at(0x7B09);


extern volatile __bit FSEN __at(0x7AFA);


extern volatile __bit __attribute__((__deprecated__)) GCEN __at(0x7E2F);


extern volatile __bit GCEN1 __at(0x7E2F);


extern volatile __bit GCEN2 __at(0x7B5F);


extern volatile __bit GIE __at(0x7F97);


extern volatile __bit GIEH __at(0x7F97);


extern volatile __bit GIEL __at(0x7F96);


extern volatile __bit GIE_GIEH __at(0x7F97);


extern volatile __bit GO __at(0x7E11);


extern volatile __bit GODONE __at(0x7E11);


extern volatile __bit GO_DONE __at(0x7E11);


extern volatile __bit GO_NOT_DONE __at(0x7E11);


extern volatile __bit GO_nDONE __at(0x7E11);


extern volatile __bit I2C_DAT2 __at(0x7B6D);


extern volatile __bit I2C_READ2 __at(0x7B6A);


extern volatile __bit I2C_START2 __at(0x7B6B);


extern volatile __bit I2C_STOP2 __at(0x7B6C);


extern volatile __bit IB0F __at(0x7A08);


extern volatile __bit IB1F __at(0x7A09);


extern volatile __bit IB2F __at(0x7A0A);


extern volatile __bit IB3F __at(0x7A0B);


extern volatile __bit IBF __at(0x7A0F);


extern volatile __bit IBOV __at(0x7A0E);


extern volatile __bit IDLEIE __at(0x7AE4);


extern volatile __bit IDLEIF __at(0x7B14);


extern volatile __bit IDLEN __at(0x7E9F);


extern volatile __bit INCM0 __at(0x7A4B);


extern volatile __bit INCM1 __at(0x7A4C);


extern volatile __bit INT0 __at(0x7C08);


extern volatile __bit INT0E __at(0x7F94);


extern volatile __bit INT0F __at(0x7F91);


extern volatile __bit INT0IE __at(0x7F94);


extern volatile __bit INT0IF __at(0x7F91);


extern volatile __bit INT1 __at(0x7C09);


extern volatile __bit INT1E __at(0x7F83);


extern volatile __bit INT1F __at(0x7F80);


extern volatile __bit INT1IE __at(0x7F83);


extern volatile __bit INT1IF __at(0x7F80);


extern volatile __bit INT1IP __at(0x7F86);


extern volatile __bit INT1P __at(0x7F86);


extern volatile __bit INT2 __at(0x7C0A);


extern volatile __bit INT2E __at(0x7F84);


extern volatile __bit INT2F __at(0x7F81);


extern volatile __bit INT2IE __at(0x7F84);


extern volatile __bit INT2IF __at(0x7F81);


extern volatile __bit INT2IP __at(0x7F87);


extern volatile __bit INT2P __at(0x7F87);


extern volatile __bit INT3 __at(0x7C0B);


extern volatile __bit INT3E __at(0x7F85);


extern volatile __bit INT3F __at(0x7F82);


extern volatile __bit INT3IE __at(0x7F85);


extern volatile __bit INT3IF __at(0x7F82);


extern volatile __bit INT3IP __at(0x7F89);


extern volatile __bit INT3P __at(0x7F89);


extern volatile __bit INTEDG0 __at(0x7F8E);


extern volatile __bit INTEDG1 __at(0x7F8D);


extern volatile __bit INTEDG2 __at(0x7F8C);


extern volatile __bit INTEDG3 __at(0x7F8B);


extern volatile __bit INTSRC __at(0x7CDF);


extern volatile __bit IPEN __at(0x7E87);


extern volatile __bit IRCF0 __at(0x7E9C);


extern volatile __bit IRCF1 __at(0x7E9D);


extern volatile __bit IRCF2 __at(0x7E9E);


extern volatile __bit IRQM0 __at(0x7A4D);


extern volatile __bit IRQM1 __at(0x7A4E);


extern volatile __bit KBI0 __at(0x7C0C);


extern volatile __bit KBI1 __at(0x7C0D);


extern volatile __bit KBI2 __at(0x7C0E);


extern volatile __bit KBI3 __at(0x7C0F);


extern volatile __bit LA0 __at(0x7C48);


extern volatile __bit LA1 __at(0x7C49);


extern volatile __bit LA2 __at(0x7C4A);


extern volatile __bit LA3 __at(0x7C4B);


extern volatile __bit LA4 __at(0x7C4C);


extern volatile __bit LA5 __at(0x7C4D);


extern volatile __bit LA6 __at(0x7C4E);


extern volatile __bit LA7 __at(0x7C4F);


extern volatile __bit LATA0 __at(0x7C48);


extern volatile __bit LATA1 __at(0x7C49);


extern volatile __bit LATA2 __at(0x7C4A);


extern volatile __bit LATA3 __at(0x7C4B);


extern volatile __bit LATA4 __at(0x7C4C);


extern volatile __bit LATA5 __at(0x7C4D);


extern volatile __bit LATA6 __at(0x7C4E);


extern volatile __bit LATA7 __at(0x7C4F);


extern volatile __bit LATB0 __at(0x7C50);


extern volatile __bit LATB1 __at(0x7C51);


extern volatile __bit LATB2 __at(0x7C52);


extern volatile __bit LATB3 __at(0x7C53);


extern volatile __bit LATB4 __at(0x7C54);


extern volatile __bit LATB5 __at(0x7C55);


extern volatile __bit LATB6 __at(0x7C56);


extern volatile __bit LATB7 __at(0x7C57);


extern volatile __bit LATC0 __at(0x7C58);


extern volatile __bit LATC1 __at(0x7C59);


extern volatile __bit LATC2 __at(0x7C5A);


extern volatile __bit LATC3 __at(0x7C5B);


extern volatile __bit LATC4 __at(0x7C5C);


extern volatile __bit LATC5 __at(0x7C5D);


extern volatile __bit LATC6 __at(0x7C5E);


extern volatile __bit LATC7 __at(0x7C5F);


extern volatile __bit LATD0 __at(0x7C60);


extern volatile __bit LATD1 __at(0x7C61);


extern volatile __bit LATD2 __at(0x7C62);


extern volatile __bit LATD3 __at(0x7C63);


extern volatile __bit LATD4 __at(0x7C64);


extern volatile __bit LATD5 __at(0x7C65);


extern volatile __bit LATD6 __at(0x7C66);


extern volatile __bit LATD7 __at(0x7C67);


extern volatile __bit LATE0 __at(0x7C68);


extern volatile __bit LATE1 __at(0x7C69);


extern volatile __bit LATE2 __at(0x7C6A);


extern volatile __bit LATE3 __at(0x7C6B);


extern volatile __bit LATE4 __at(0x7C6C);


extern volatile __bit LATE5 __at(0x7C6D);


extern volatile __bit LATE6 __at(0x7C6E);


extern volatile __bit LATE7 __at(0x7C6F);


extern volatile __bit LATF2 __at(0x7C72);


extern volatile __bit LATF3 __at(0x7C73);


extern volatile __bit LATF4 __at(0x7C74);


extern volatile __bit LATF5 __at(0x7C75);


extern volatile __bit LATF6 __at(0x7C76);


extern volatile __bit LATF7 __at(0x7C77);


extern volatile __bit LATG0 __at(0x7C78);


extern volatile __bit LATG1 __at(0x7C79);


extern volatile __bit LATG2 __at(0x7C7A);


extern volatile __bit LATG3 __at(0x7C7B);


extern volatile __bit LATG4 __at(0x7C7C);


extern volatile __bit LB0 __at(0x7C50);


extern volatile __bit LB1 __at(0x7C51);


extern volatile __bit LB2 __at(0x7C52);


extern volatile __bit LB3 __at(0x7C53);


extern volatile __bit LB4 __at(0x7C54);


extern volatile __bit LB5 __at(0x7C55);


extern volatile __bit LB6 __at(0x7C56);


extern volatile __bit LB7 __at(0x7C57);


extern volatile __bit LC0 __at(0x7C58);


extern volatile __bit LC1 __at(0x7C59);


extern volatile __bit LC2 __at(0x7C5A);


extern volatile __bit LC3 __at(0x7C5B);


extern volatile __bit LC4 __at(0x7C5C);


extern volatile __bit LC5 __at(0x7C5D);


extern volatile __bit LC6 __at(0x7C5E);


extern volatile __bit LC7 __at(0x7C5F);


extern volatile __bit LD0 __at(0x7C60);


extern volatile __bit LD1 __at(0x7C61);


extern volatile __bit LD2 __at(0x7C62);


extern volatile __bit LD3 __at(0x7C63);


extern volatile __bit LD4 __at(0x7C64);


extern volatile __bit LD5 __at(0x7C65);


extern volatile __bit LD6 __at(0x7C66);


extern volatile __bit LD7 __at(0x7C67);


extern volatile __bit LE0 __at(0x7C68);


extern volatile __bit LE1 __at(0x7C69);


extern volatile __bit LE2 __at(0x7C6A);


extern volatile __bit LE3 __at(0x7C6B);


extern volatile __bit LE4 __at(0x7C6C);


extern volatile __bit LE5 __at(0x7C6D);


extern volatile __bit LE6 __at(0x7C6E);


extern volatile __bit LE7 __at(0x7C6F);


extern volatile __bit LF2 __at(0x7C72);


extern volatile __bit LF3 __at(0x7C73);


extern volatile __bit LF4 __at(0x7C74);


extern volatile __bit LF5 __at(0x7C75);


extern volatile __bit LF6 __at(0x7C76);


extern volatile __bit LF7 __at(0x7C77);


extern volatile __bit LG0 __at(0x7C78);


extern volatile __bit LG1 __at(0x7C79);


extern volatile __bit LG2 __at(0x7C7A);


extern volatile __bit LG3 __at(0x7C7B);


extern volatile __bit LG4 __at(0x7C7C);


extern volatile __bit LVDIE __at(0x7D02);


extern volatile __bit LVDIF __at(0x7D0A);


extern volatile __bit LVDIN __at(0x7C05);


extern volatile __bit LVDIP __at(0x7D12);


extern volatile __bit LVDSTAT __at(0x7E06);


extern volatile __bit MODE0 __at(0x7A48);


extern volatile __bit MODE1 __at(0x7A49);


extern volatile __bit MODE16 __at(0x7A4A);


extern volatile __bit MSK01 __at(0x7E40);


extern volatile __bit MSK02 __at(0x7B70);


extern volatile __bit MSK11 __at(0x7E41);


extern volatile __bit MSK12 __at(0x7B71);


extern volatile __bit MSK21 __at(0x7E42);


extern volatile __bit MSK22 __at(0x7B72);


extern volatile __bit MSK31 __at(0x7E43);


extern volatile __bit MSK32 __at(0x7B73);


extern volatile __bit MSK41 __at(0x7E44);


extern volatile __bit MSK42 __at(0x7B74);


extern volatile __bit MSK51 __at(0x7E45);


extern volatile __bit MSK52 __at(0x7B75);


extern volatile __bit MSK61 __at(0x7E46);


extern volatile __bit MSK62 __at(0x7B76);


extern volatile __bit MSK71 __at(0x7E47);


extern volatile __bit MSK72 __at(0x7B77);


extern volatile __bit NEGATIVE __at(0x7EC4);


extern volatile __bit NOT_A __at(0x7E3D);


extern volatile __bit NOT_A2 __at(0x7B6D);


extern volatile __bit NOT_ADDRESS2 __at(0x7B6D);


extern volatile __bit NOT_BOR __at(0x7E80);


extern volatile __bit NOT_CM __at(0x7E85);


extern volatile __bit NOT_DONE __at(0x7E11);


extern volatile __bit NOT_PD __at(0x7E82);


extern volatile __bit NOT_POR __at(0x7E81);


extern volatile __bit NOT_RBPU __at(0x7F8F);


extern volatile __bit NOT_RI __at(0x7E84);


extern volatile __bit NOT_T1SYNC __at(0x7E6A);


extern volatile __bit NOT_T3SYNC __at(0x7BCA);


extern volatile __bit NOT_TO __at(0x7E83);


extern volatile __bit NOT_W __at(0x7E3A);


extern volatile __bit NOT_W2 __at(0x7B6A);


extern volatile __bit NOT_WRITE2 __at(0x7B6A);


extern volatile __bit OB0E __at(0x7A00);


extern volatile __bit OB1E __at(0x7A01);


extern volatile __bit OB2E __at(0x7A02);


extern volatile __bit OB3E __at(0x7A03);


extern volatile __bit OBE __at(0x7A07);


extern volatile __bit OBUF __at(0x7A06);


extern volatile __bit __attribute__((__deprecated__)) OERR __at(0x7D61);


extern volatile __bit OERR1 __at(0x7D61);


extern volatile __bit OERR2 __at(0x7CE1);


extern volatile __bit OSC2 __at(0x7C06);


extern volatile __bit OSCFIE __at(0x7D07);


extern volatile __bit OSCFIF __at(0x7D0F);


extern volatile __bit OSCFIP __at(0x7D17);


extern volatile __bit OSTS __at(0x7E9B);


extern volatile __bit OV __at(0x7EC3);


extern volatile __bit OVERFLOW __at(0x7EC3);


extern volatile __bit P1DC0 __at(0x7DF0);


extern volatile __bit P1DC1 __at(0x7DF1);


extern volatile __bit P1DC2 __at(0x7DF2);


extern volatile __bit P1DC3 __at(0x7DF3);


extern volatile __bit P1DC4 __at(0x7DF4);


extern volatile __bit P1DC5 __at(0x7DF5);


extern volatile __bit P1DC6 __at(0x7DF6);


extern volatile __bit P1M0 __at(0x7DDE);


extern volatile __bit P1M1 __at(0x7DDF);


extern volatile __bit P1RSEN __at(0x7DF7);


extern volatile __bit P2 __at(0x7B6C);


extern volatile __bit P2DC0 __at(0x7DC8);


extern volatile __bit P2DC1 __at(0x7DC9);


extern volatile __bit P2DC2 __at(0x7DCA);


extern volatile __bit P2DC3 __at(0x7DCB);


extern volatile __bit P2DC4 __at(0x7DCC);


extern volatile __bit P2DC5 __at(0x7DCD);


extern volatile __bit P2DC6 __at(0x7DCE);


extern volatile __bit P2M0 __at(0x7DB6);


extern volatile __bit P2M1 __at(0x7DB7);


extern volatile __bit P2RSEN __at(0x7DCF);


extern volatile __bit P3DC0 __at(0x7DA0);


extern volatile __bit P3DC1 __at(0x7DA1);


extern volatile __bit P3DC2 __at(0x7DA2);


extern volatile __bit P3DC3 __at(0x7DA3);


extern volatile __bit P3DC4 __at(0x7DA4);


extern volatile __bit P3DC5 __at(0x7DA5);


extern volatile __bit P3DC6 __at(0x7DA6);


extern volatile __bit P3M0 __at(0x7D8E);


extern volatile __bit P3M1 __at(0x7D8F);


extern volatile __bit P3RSEN __at(0x7DA7);


extern volatile __bit PA1 __at(0x7C12);


extern volatile __bit PA2 __at(0x7C11);


extern volatile __bit PA2E __at(0x7C27);


extern volatile __bit PB1E __at(0x7C26);


extern volatile __bit PB2 __at(0x7C22);


extern volatile __bit PB3E __at(0x7C24);


extern volatile __bit PC1E __at(0x7C25);


extern volatile __bit PC2 __at(0x7C21);


extern volatile __bit PC3E __at(0x7C23);


extern volatile __bit PCFG0 __at(0x7E08);


extern volatile __bit PCFG1 __at(0x7E09);


extern volatile __bit PCFG10 __at(0x7E12);


extern volatile __bit PCFG11 __at(0x7E13);


extern volatile __bit PCFG12 __at(0x7E14);


extern volatile __bit PCFG13 __at(0x7E15);


extern volatile __bit PCFG14 __at(0x7E16);


extern volatile __bit PCFG15 __at(0x7E17);


extern volatile __bit PCFG2 __at(0x7E0A);


extern volatile __bit PCFG3 __at(0x7E0B);


extern volatile __bit PCFG4 __at(0x7E0C);


extern volatile __bit PCFG5 __at(0x7E0D);


extern volatile __bit PCFG6 __at(0x7E0E);


extern volatile __bit PCFG7 __at(0x7E0F);


extern volatile __bit PCFG8 __at(0x7E10);


extern volatile __bit PCFG9 __at(0x7E11);


extern volatile __bit PD __at(0x7E82);


extern volatile __bit PD2 __at(0x7C20);


extern volatile __bit PEIE __at(0x7F96);


extern volatile __bit PEIE_GIEL __at(0x7F96);


extern volatile __bit __attribute__((__deprecated__)) PEN __at(0x7E2A);


extern volatile __bit PEN1 __at(0x7E2A);


extern volatile __bit PEN2 __at(0x7B5A);


extern volatile __bit PGC __at(0x7C0D);


extern volatile __bit PGD __at(0x7C0E);


extern volatile __bit PIDEE __at(0x7AE8);


extern volatile __bit PIDEF __at(0x7B18);


extern volatile __bit PKTDIS __at(0x7B2C);


extern volatile __bit PLLEN __at(0x7CDE);


extern volatile __bit PMA0 __at(0x7C0D);


extern volatile __bit PMA1 __at(0x7C0C);


extern volatile __bit PMA10 __at(0x7C26);


extern volatile __bit PMA11 __at(0x7C25);


extern volatile __bit PMA12 __at(0x7C24);


extern volatile __bit PMA13 __at(0x7C23);


extern volatile __bit PMA2 __at(0x7C0B);


extern volatile __bit PMA3 __at(0x7C0A);


extern volatile __bit PMA4 __at(0x7C09);


extern volatile __bit PMA5 __at(0x7C2A);


extern volatile __bit PMA6 __at(0x7C32);


extern volatile __bit PMA7 __at(0x7C31);


extern volatile __bit PMA8 __at(0x7C30);


extern volatile __bit PMA9 __at(0x7C27);


extern volatile __bit PMBE __at(0x7C22);


extern volatile __bit PMCS1 __at(0x7C33);


extern volatile __bit PMCS2 __at(0x7C34);


extern volatile __bit PMD0 __at(0x7C18);


extern volatile __bit PMD1 __at(0x7C19);


extern volatile __bit PMD2 __at(0x7C1A);


extern volatile __bit PMD3 __at(0x7C1B);


extern volatile __bit PMD4 __at(0x7C1C);


extern volatile __bit PMD5 __at(0x7C1D);


extern volatile __bit PMD6 __at(0x7C1E);


extern volatile __bit PMD7 __at(0x7C1F);


extern volatile __bit PMPEN __at(0x7A5F);


extern volatile __bit PMPIE __at(0x7CEF);


extern volatile __bit PMPIF __at(0x7CF7);


extern volatile __bit PMPIP __at(0x7CFF);


extern volatile __bit PMPTL __at(0x7E60);


extern volatile __bit PMPTTL __at(0x7E60);


extern volatile __bit PMRD __at(0x7C20);


extern volatile __bit PMWR __at(0x7C21);


extern volatile __bit POR __at(0x7E81);


extern volatile __bit PPB0 __at(0x7AF8);


extern volatile __bit PPB1 __at(0x7AF9);


extern volatile __bit PPBI __at(0x7B21);


extern volatile __bit PPBRST __at(0x7B2E);


extern volatile __bit PSA __at(0x7EAB);


extern volatile __bit PSIDL __at(0x7A5D);


extern volatile __bit PSPIE __at(0x7CEF);


extern volatile __bit PSPIF __at(0x7CF7);


extern volatile __bit PSPIP __at(0x7CFF);


extern volatile __bit PSS1AC0 __at(0x7DFA);


extern volatile __bit PSS1AC1 __at(0x7DFB);


extern volatile __bit PSS1BD0 __at(0x7DF8);


extern volatile __bit PSS1BD1 __at(0x7DF9);


extern volatile __bit PSS2AC0 __at(0x7DD2);


extern volatile __bit PSS2AC1 __at(0x7DD3);


extern volatile __bit PSS2BD0 __at(0x7DD0);


extern volatile __bit PSS2BD1 __at(0x7DD1);


extern volatile __bit PSS3AC0 __at(0x7DAA);


extern volatile __bit PSS3AC1 __at(0x7DAB);


extern volatile __bit PSS3BD0 __at(0x7DA8);


extern volatile __bit PSS3BD1 __at(0x7DA9);


extern volatile __bit PTBEEN __at(0x7A5A);


extern volatile __bit PTEN0 __at(0x7A10);


extern volatile __bit PTEN1 __at(0x7A11);


extern volatile __bit PTEN10 __at(0x7A1A);


extern volatile __bit PTEN11 __at(0x7A1B);


extern volatile __bit PTEN12 __at(0x7A1C);


extern volatile __bit PTEN13 __at(0x7A1D);


extern volatile __bit PTEN14 __at(0x7A1E);


extern volatile __bit PTEN15 __at(0x7A1F);


extern volatile __bit PTEN2 __at(0x7A12);


extern volatile __bit PTEN3 __at(0x7A13);


extern volatile __bit PTEN4 __at(0x7A14);


extern volatile __bit PTEN5 __at(0x7A15);


extern volatile __bit PTEN6 __at(0x7A16);


extern volatile __bit PTEN7 __at(0x7A17);


extern volatile __bit PTEN8 __at(0x7A18);


extern volatile __bit PTEN9 __at(0x7A19);


extern volatile __bit PTRDEN __at(0x7A58);


extern volatile __bit PTWREN __at(0x7A59);


extern volatile __bit __attribute__((__deprecated__)) RA0 __at(0x7C00);


extern volatile __bit __attribute__((__deprecated__)) RA1 __at(0x7C01);


extern volatile __bit __attribute__((__deprecated__)) RA2 __at(0x7C02);


extern volatile __bit __attribute__((__deprecated__)) RA3 __at(0x7C03);


extern volatile __bit __attribute__((__deprecated__)) RA4 __at(0x7C04);


extern volatile __bit __attribute__((__deprecated__)) RA5 __at(0x7C05);


extern volatile __bit __attribute__((__deprecated__)) RA6 __at(0x7C06);


extern volatile __bit __attribute__((__deprecated__)) RA7 __at(0x7C07);


extern volatile __bit __attribute__((__deprecated__)) RB0 __at(0x7C08);


extern volatile __bit __attribute__((__deprecated__)) RB1 __at(0x7C09);


extern volatile __bit __attribute__((__deprecated__)) RB2 __at(0x7C0A);


extern volatile __bit __attribute__((__deprecated__)) RB3 __at(0x7C0B);


extern volatile __bit __attribute__((__deprecated__)) RB4 __at(0x7C0C);


extern volatile __bit __attribute__((__deprecated__)) RB5 __at(0x7C0D);


extern volatile __bit __attribute__((__deprecated__)) RB6 __at(0x7C0E);


extern volatile __bit __attribute__((__deprecated__)) RB7 __at(0x7C0F);


extern volatile __bit RBIE __at(0x7F93);


extern volatile __bit RBIF __at(0x7F90);


extern volatile __bit RBIP __at(0x7F88);


extern volatile __bit RBPU __at(0x7F8F);


extern volatile __bit __attribute__((__deprecated__)) RC0 __at(0x7C10);


extern volatile __bit __attribute__((__deprecated__)) RC1 __at(0x7C11);


extern volatile __bit RC1IE __at(0x7CED);


extern volatile __bit RC1IF __at(0x7CF5);


extern volatile __bit RC1IP __at(0x7CFD);


extern volatile __bit __attribute__((__deprecated__)) RC2 __at(0x7C12);


extern volatile __bit RC2IE __at(0x7D1D);


extern volatile __bit RC2IF __at(0x7D25);


extern volatile __bit RC2IP __at(0x7D2D);


extern volatile __bit __attribute__((__deprecated__)) RC3 __at(0x7C13);


extern volatile __bit __attribute__((__deprecated__)) RC4 __at(0x7C14);


extern volatile __bit __attribute__((__deprecated__)) RC5 __at(0x7C15);


extern volatile __bit __attribute__((__deprecated__)) RC6 __at(0x7C16);


extern volatile __bit __attribute__((__deprecated__)) RC7 __at(0x7C17);


extern volatile __bit RC8_92 __at(0x7CE6);


extern volatile __bit RC92 __at(0x7CE6);


extern volatile __bit RCD82 __at(0x7CE0);


extern volatile __bit __attribute__((__deprecated__)) RCEN __at(0x7E2B);


extern volatile __bit RCEN1 __at(0x7E2B);


extern volatile __bit RCEN2 __at(0x7B5B);


extern volatile __bit __attribute__((__deprecated__)) RCIDL __at(0x7BF6);


extern volatile __bit RCIDL1 __at(0x7BF6);


extern volatile __bit RCIDL2 __at(0x7BE6);


extern volatile __bit RCIE __at(0x7CED);


extern volatile __bit RCIF __at(0x7CF5);


extern volatile __bit RCIP __at(0x7CFD);


extern volatile __bit RCMT1 __at(0x7BF6);


extern volatile __bit RCMT2 __at(0x7BE6);


extern volatile __bit __attribute__((__deprecated__)) RD0 __at(0x7C18);


extern volatile __bit __attribute__((__deprecated__)) RD1 __at(0x7C19);


extern volatile __bit RD163 __at(0x7BCF);


extern volatile __bit __attribute__((__deprecated__)) RD2 __at(0x7C1A);


extern volatile __bit __attribute__((__deprecated__)) RD3 __at(0x7C1B);


extern volatile __bit __attribute__((__deprecated__)) RD4 __at(0x7C1C);


extern volatile __bit __attribute__((__deprecated__)) RD5 __at(0x7C1D);


extern volatile __bit __attribute__((__deprecated__)) RD6 __at(0x7C1E);


extern volatile __bit __attribute__((__deprecated__)) RD7 __at(0x7C1F);


extern volatile __bit RDE __at(0x7C20);


extern volatile __bit RDPU __at(0x7C37);


extern volatile __bit RDSP __at(0x7A50);


extern volatile __bit __attribute__((__deprecated__)) RE0 __at(0x7C20);


extern volatile __bit __attribute__((__deprecated__)) RE1 __at(0x7C21);


extern volatile __bit __attribute__((__deprecated__)) RE2 __at(0x7C22);


extern volatile __bit __attribute__((__deprecated__)) RE3 __at(0x7C23);


extern volatile __bit __attribute__((__deprecated__)) RE4 __at(0x7C24);


extern volatile __bit __attribute__((__deprecated__)) RE5 __at(0x7C25);


extern volatile __bit __attribute__((__deprecated__)) RE6 __at(0x7C26);


extern volatile __bit __attribute__((__deprecated__)) RE7 __at(0x7C27);


extern volatile __bit READ_WRITE2 __at(0x7B6A);


extern volatile __bit REFO __at(0x7C23);


extern volatile __bit REGSLP __at(0x7E07);


extern volatile __bit REPU __at(0x7C36);


extern volatile __bit RESUME __at(0x7B2A);


extern volatile __bit __attribute__((__deprecated__)) RF2 __at(0x7C2A);


extern volatile __bit __attribute__((__deprecated__)) RF3 __at(0x7C2B);


extern volatile __bit __attribute__((__deprecated__)) RF4 __at(0x7C2C);


extern volatile __bit __attribute__((__deprecated__)) RF5 __at(0x7C2D);


extern volatile __bit __attribute__((__deprecated__)) RF6 __at(0x7C2E);


extern volatile __bit __attribute__((__deprecated__)) RF7 __at(0x7C2F);


extern volatile __bit __attribute__((__deprecated__)) RG0 __at(0x7C30);


extern volatile __bit __attribute__((__deprecated__)) RG1 __at(0x7C31);


extern volatile __bit __attribute__((__deprecated__)) RG2 __at(0x7C32);


extern volatile __bit __attribute__((__deprecated__)) RG3 __at(0x7C33);


extern volatile __bit __attribute__((__deprecated__)) RG4 __at(0x7C34);


extern volatile __bit RG6 __at(0x7C36);


extern volatile __bit RG7 __at(0x7C37);


extern volatile __bit RI __at(0x7E84);


extern volatile __bit RJPU __at(0x7C07);


extern volatile __bit RODIV0 __at(0x7E98);


extern volatile __bit RODIV1 __at(0x7E99);


extern volatile __bit RODIV2 __at(0x7E9A);


extern volatile __bit RODIV3 __at(0x7E9B);


extern volatile __bit ROON __at(0x7E9F);


extern volatile __bit ROSEL __at(0x7E9C);


extern volatile __bit ROSSLP __at(0x7E9D);


extern volatile __bit __attribute__((__deprecated__)) RSEN __at(0x7E29);


extern volatile __bit RSEN1 __at(0x7E29);


extern volatile __bit RSEN2 __at(0x7B59);


extern volatile __bit RW __at(0x7E3A);


extern volatile __bit RW1 __at(0x7E3A);


extern volatile __bit RW2 __at(0x7B6A);


extern volatile __bit RX __at(0x7C17);


extern volatile __bit RX2 __at(0x7C32);


extern volatile __bit __attribute__((__deprecated__)) RX9 __at(0x7D66);


extern volatile __bit RX91 __at(0x7D66);


extern volatile __bit RX92 __at(0x7CE6);


extern volatile __bit __attribute__((__deprecated__)) RX9D __at(0x7D60);


extern volatile __bit RX9D1 __at(0x7D60);


extern volatile __bit RX9D2 __at(0x7CE0);


extern volatile __bit RXB0IE __at(0x7D18);


extern volatile __bit RXB1IE __at(0x7D19);


extern volatile __bit RXBNIE __at(0x7D19);


extern volatile __bit RXBNIF __at(0x7D21);


extern volatile __bit RXBNIP __at(0x7D29);


extern volatile __bit RXCKP __at(0x7BF5);


extern volatile __bit RXDTP1 __at(0x7BF5);


extern volatile __bit RXDTP2 __at(0x7BE5);


extern volatile __bit R_NOT_W2 __at(0x7B6A);


extern volatile __bit R_W2 __at(0x7B6A);


extern volatile __bit R_nW2 __at(0x7B6A);


extern volatile __bit S2 __at(0x7B6B);


extern volatile __bit SCK __at(0x7C13);


extern volatile __bit SCK2 __at(0x7C1E);


extern volatile __bit __attribute__((__deprecated__)) SCKP __at(0x7BF4);


extern volatile __bit SCKP1 __at(0x7BF4);


extern volatile __bit SCKP2 __at(0x7BE4);


extern volatile __bit SCL __at(0x7C13);


extern volatile __bit SCL2 __at(0x7C1E);


extern volatile __bit SCS0 __at(0x7E98);


extern volatile __bit SCS1 __at(0x7E99);


extern volatile __bit SDA __at(0x7C14);


extern volatile __bit SDA2 __at(0x7C1D);


extern volatile __bit SDI __at(0x7C14);


extern volatile __bit SDI2 __at(0x7C1D);


extern volatile __bit SDO __at(0x7C15);


extern volatile __bit SDO2 __at(0x7C1C);


extern volatile __bit SE0 __at(0x7B2D);


extern volatile __bit __attribute__((__deprecated__)) SEN __at(0x7E28);


extern volatile __bit SEN1 __at(0x7E28);


extern volatile __bit SEN2 __at(0x7B58);


extern volatile __bit __attribute__((__deprecated__)) SENDB __at(0x7D6B);


extern volatile __bit SENDB1 __at(0x7D6B);


extern volatile __bit SENDB2 __at(0x7D43);


extern volatile __bit __attribute__((__deprecated__)) SMP __at(0x7E3F);


extern volatile __bit SMP1 __at(0x7E3F);


extern volatile __bit SMP2 __at(0x7B6F);


extern volatile __bit SOFIE __at(0x7AE6);


extern volatile __bit SOFIF __at(0x7B16);


extern volatile __bit SOSCEN __at(0x7E6B);


extern volatile __bit SOSCEN3 __at(0x7BCB);


extern volatile __bit SP0 __at(0x7FE0);


extern volatile __bit SP1 __at(0x7FE1);


extern volatile __bit SP2 __at(0x7FE2);


extern volatile __bit SP3 __at(0x7FE3);


extern volatile __bit SP4 __at(0x7FE4);


extern volatile __bit __attribute__((__deprecated__)) SPEN __at(0x7D67);


extern volatile __bit SPEN1 __at(0x7D67);


extern volatile __bit SPEN2 __at(0x7CE7);


extern volatile __bit SPI1OD __at(0x7E68);


extern volatile __bit SPI2OD __at(0x7E69);


extern volatile __bit __attribute__((__deprecated__)) SREN __at(0x7D65);


extern volatile __bit SREN1 __at(0x7D65);


extern volatile __bit SREN2 __at(0x7CE5);


extern volatile __bit SRENA __at(0x7D65);


extern volatile __bit SS __at(0x7C2F);


extern volatile __bit SS2 __at(0x7C1F);


extern volatile __bit SSP1IE __at(0x7CEB);


extern volatile __bit SSP1IF __at(0x7CF3);


extern volatile __bit SSP1IP __at(0x7CFB);


extern volatile __bit SSP2IE __at(0x7D1F);


extern volatile __bit SSP2IF __at(0x7D27);


extern volatile __bit SSP2IP __at(0x7D2F);


extern volatile __bit __attribute__((__deprecated__)) SSPEN __at(0x7E35);


extern volatile __bit SSPEN1 __at(0x7E35);


extern volatile __bit SSPEN2 __at(0x7B65);


extern volatile __bit SSPIE __at(0x7CEB);


extern volatile __bit SSPIF __at(0x7CF3);


extern volatile __bit SSPIP __at(0x7CFB);


extern volatile __bit __attribute__((__deprecated__)) SSPM0 __at(0x7E30);


extern volatile __bit SSPM01 __at(0x7E30);


extern volatile __bit SSPM02 __at(0x7B60);


extern volatile __bit __attribute__((__deprecated__)) SSPM1 __at(0x7E31);


extern volatile __bit SSPM11 __at(0x7E31);


extern volatile __bit SSPM12 __at(0x7B61);


extern volatile __bit __attribute__((__deprecated__)) SSPM2 __at(0x7E32);


extern volatile __bit SSPM21 __at(0x7E32);


extern volatile __bit SSPM22 __at(0x7B62);


extern volatile __bit __attribute__((__deprecated__)) SSPM3 __at(0x7E33);


extern volatile __bit SSPM31 __at(0x7E33);


extern volatile __bit SSPM32 __at(0x7B63);


extern volatile __bit __attribute__((__deprecated__)) SSPOV __at(0x7E36);


extern volatile __bit SSPOV1 __at(0x7E36);


extern volatile __bit SSPOV2 __at(0x7B66);


extern volatile __bit STALLIE __at(0x7AE5);


extern volatile __bit STALLIF __at(0x7B15);


extern volatile __bit START __at(0x7E3B);


extern volatile __bit START1 __at(0x7E3B);


extern volatile __bit START2 __at(0x7B6B);


extern volatile __bit STKFUL __at(0x7FE7);


extern volatile __bit STKOVF __at(0x7FE7);


extern volatile __bit STKPTR0 __at(0x7FE0);


extern volatile __bit STKPTR1 __at(0x7FE1);


extern volatile __bit STKPTR2 __at(0x7FE2);


extern volatile __bit STKPTR3 __at(0x7FE3);


extern volatile __bit STKPTR4 __at(0x7FE4);


extern volatile __bit STKUNF __at(0x7FE6);


extern volatile __bit STOP __at(0x7E3C);


extern volatile __bit STOP1 __at(0x7E3C);


extern volatile __bit STOP2 __at(0x7B6C);


extern volatile __bit SUSPND __at(0x7B29);


extern volatile __bit SWDTE __at(0x7E00);


extern volatile __bit SWDTEN __at(0x7E00);


extern volatile __bit __attribute__((__deprecated__)) SYNC __at(0x7D6C);


extern volatile __bit SYNC1 __at(0x7D6C);


extern volatile __bit SYNC2 __at(0x7D44);


extern volatile __bit T08BIT __at(0x7EAE);


extern volatile __bit T0CKI __at(0x7C04);


extern volatile __bit T0CS __at(0x7EAD);


extern volatile __bit T0IE __at(0x7F95);


extern volatile __bit T0IF __at(0x7F92);


extern volatile __bit T0IP __at(0x7F8A);


extern volatile __bit T0PS0 __at(0x7EA8);


extern volatile __bit T0PS1 __at(0x7EA9);


extern volatile __bit T0PS2 __at(0x7EAA);


extern volatile __bit T0PS3 __at(0x7EAB);


extern volatile __bit T0SE __at(0x7EAC);


extern volatile __bit T13CKI __at(0x7C10);


extern volatile __bit T1CKPS0 __at(0x7E6C);


extern volatile __bit T1CKPS1 __at(0x7E6D);


extern volatile __bit T1INSYNC __at(0x7E6A);


extern volatile __bit T1OSCEN __at(0x7E6B);


extern volatile __bit T1OSI __at(0x7C11);


extern volatile __bit T1OSO __at(0x7C10);


extern volatile __bit T1RD16 __at(0x7E6F);


extern volatile __bit T1RUN __at(0x7E6E);


extern volatile __bit T1SYNC __at(0x7E6A);


extern volatile __bit T2CKPS0 __at(0x7E50);


extern volatile __bit T2CKPS1 __at(0x7E51);


extern volatile __bit T2OUTPS0 __at(0x7E53);


extern volatile __bit T2OUTPS1 __at(0x7E54);


extern volatile __bit T2OUTPS2 __at(0x7E55);


extern volatile __bit T2OUTPS3 __at(0x7E56);


extern volatile __bit T3CCP1 __at(0x7BCB);


extern volatile __bit T3CCP2 __at(0x7BCE);


extern volatile __bit T3CKPS0 __at(0x7BCC);


extern volatile __bit T3CKPS1 __at(0x7BCD);


extern volatile __bit T3INSYNC __at(0x7BCA);


extern volatile __bit T3RD16 __at(0x7BCF);


extern volatile __bit T3SYNC __at(0x7BCA);


extern volatile __bit T4CKPS0 __at(0x7BB0);


extern volatile __bit T4CKPS1 __at(0x7BB1);


extern volatile __bit T4OUTPS0 __at(0x7BB3);


extern volatile __bit T4OUTPS1 __at(0x7BB4);


extern volatile __bit T4OUTPS2 __at(0x7BB5);


extern volatile __bit T4OUTPS3 __at(0x7BB6);


extern volatile __bit TMR0IE __at(0x7F95);


extern volatile __bit TMR0IF __at(0x7F92);


extern volatile __bit TMR0IP __at(0x7F8A);


extern volatile __bit TMR0ON __at(0x7EAF);


extern volatile __bit TMR1CS __at(0x7E69);


extern volatile __bit TMR1IE __at(0x7CE8);


extern volatile __bit TMR1IF __at(0x7CF0);


extern volatile __bit TMR1IP __at(0x7CF8);


extern volatile __bit TMR1ON __at(0x7E68);


extern volatile __bit TMR2IE __at(0x7CE9);


extern volatile __bit TMR2IF __at(0x7CF1);


extern volatile __bit TMR2IP __at(0x7CF9);


extern volatile __bit TMR2ON __at(0x7E52);


extern volatile __bit TMR3CS __at(0x7BC9);


extern volatile __bit TMR3IE __at(0x7D01);


extern volatile __bit TMR3IF __at(0x7D09);


extern volatile __bit TMR3IP __at(0x7D11);


extern volatile __bit TMR3ON __at(0x7BC8);


extern volatile __bit TMR4IE __at(0x7D1B);


extern volatile __bit TMR4IF __at(0x7D23);


extern volatile __bit TMR4IP __at(0x7D2B);


extern volatile __bit TMR4ON __at(0x7BB2);


extern volatile __bit TO __at(0x7E83);


extern volatile __bit TRISA0 __at(0x7C90);


extern volatile __bit TRISA1 __at(0x7C91);


extern volatile __bit TRISA2 __at(0x7C92);


extern volatile __bit TRISA3 __at(0x7C93);


extern volatile __bit TRISA4 __at(0x7C94);


extern volatile __bit TRISA5 __at(0x7C95);


extern volatile __bit TRISA6 __at(0x7C96);


extern volatile __bit TRISA7 __at(0x7C97);


extern volatile __bit TRISB0 __at(0x7C98);


extern volatile __bit TRISB1 __at(0x7C99);


extern volatile __bit TRISB2 __at(0x7C9A);


extern volatile __bit TRISB3 __at(0x7C9B);


extern volatile __bit TRISB4 __at(0x7C9C);


extern volatile __bit TRISB5 __at(0x7C9D);


extern volatile __bit TRISB6 __at(0x7C9E);


extern volatile __bit TRISB7 __at(0x7C9F);


extern volatile __bit TRISC0 __at(0x7CA0);


extern volatile __bit TRISC1 __at(0x7CA1);


extern volatile __bit TRISC2 __at(0x7CA2);


extern volatile __bit TRISC3 __at(0x7CA3);


extern volatile __bit TRISC4 __at(0x7CA4);


extern volatile __bit TRISC5 __at(0x7CA5);


extern volatile __bit TRISC6 __at(0x7CA6);


extern volatile __bit TRISC7 __at(0x7CA7);


extern volatile __bit TRISD0 __at(0x7CA8);


extern volatile __bit TRISD1 __at(0x7CA9);


extern volatile __bit TRISD2 __at(0x7CAA);


extern volatile __bit TRISD3 __at(0x7CAB);


extern volatile __bit TRISD4 __at(0x7CAC);


extern volatile __bit TRISD5 __at(0x7CAD);


extern volatile __bit TRISD6 __at(0x7CAE);


extern volatile __bit TRISD7 __at(0x7CAF);


extern volatile __bit TRISE0 __at(0x7CB0);


extern volatile __bit TRISE1 __at(0x7CB1);


extern volatile __bit TRISE2 __at(0x7CB2);


extern volatile __bit TRISE3 __at(0x7CB3);


extern volatile __bit TRISE4 __at(0x7CB4);


extern volatile __bit TRISE5 __at(0x7CB5);


extern volatile __bit TRISE6 __at(0x7CB6);


extern volatile __bit TRISE7 __at(0x7CB7);


extern volatile __bit TRISF2 __at(0x7CBA);


extern volatile __bit TRISF3 __at(0x7CBB);


extern volatile __bit TRISF4 __at(0x7CBC);


extern volatile __bit TRISF5 __at(0x7CBD);


extern volatile __bit TRISF6 __at(0x7CBE);


extern volatile __bit TRISF7 __at(0x7CBF);


extern volatile __bit TRISG0 __at(0x7CC0);


extern volatile __bit TRISG1 __at(0x7CC1);


extern volatile __bit TRISG2 __at(0x7CC2);


extern volatile __bit TRISG3 __at(0x7CC3);


extern volatile __bit TRISG4 __at(0x7CC4);


extern volatile __bit __attribute__((__deprecated__)) TRMT __at(0x7D69);


extern volatile __bit TRMT1 __at(0x7D69);


extern volatile __bit TRMT2 __at(0x7D41);


extern volatile __bit TRNIE __at(0x7AE3);


extern volatile __bit TRNIF __at(0x7B13);


extern volatile __bit TUN0 __at(0x7CD8);


extern volatile __bit TUN1 __at(0x7CD9);


extern volatile __bit TUN2 __at(0x7CDA);


extern volatile __bit TUN3 __at(0x7CDB);


extern volatile __bit TUN4 __at(0x7CDC);


extern volatile __bit TUN5 __at(0x7CDD);


extern volatile __bit TX __at(0x7C16);


extern volatile __bit TX1IE __at(0x7CEC);


extern volatile __bit TX1IF __at(0x7CF4);


extern volatile __bit TX1IP __at(0x7CFC);


extern volatile __bit TX2 __at(0x7C31);


extern volatile __bit TX2IE __at(0x7D1C);


extern volatile __bit TX2IF __at(0x7D24);


extern volatile __bit TX2IP __at(0x7D2C);


extern volatile __bit TX8_92 __at(0x7D46);


extern volatile __bit __attribute__((__deprecated__)) TX9 __at(0x7D6E);


extern volatile __bit TX91 __at(0x7D6E);


extern volatile __bit TX92 __at(0x7D46);


extern volatile __bit __attribute__((__deprecated__)) TX9D __at(0x7D68);


extern volatile __bit TX9D1 __at(0x7D68);


extern volatile __bit TX9D2 __at(0x7D40);


extern volatile __bit TXB0IE __at(0x7D1A);


extern volatile __bit TXB1IE __at(0x7D1B);


extern volatile __bit TXB2IE __at(0x7D1C);


extern volatile __bit TXBNIE __at(0x7D1C);


extern volatile __bit TXBNIF __at(0x7D24);


extern volatile __bit TXBNIP __at(0x7D2C);


extern volatile __bit TXCKP1 __at(0x7BF4);


extern volatile __bit TXCKP2 __at(0x7BE4);


extern volatile __bit TXD82 __at(0x7D40);


extern volatile __bit __attribute__((__deprecated__)) TXEN __at(0x7D6D);


extern volatile __bit TXEN1 __at(0x7D6D);


extern volatile __bit TXEN2 __at(0x7D45);


extern volatile __bit TXIE __at(0x7CEC);


extern volatile __bit TXIF __at(0x7CF4);


extern volatile __bit TXIP __at(0x7CFC);


extern volatile __bit U1OD __at(0x7E70);


extern volatile __bit U2OD __at(0x7E71);


extern volatile __bit __attribute__((__deprecated__)) UA __at(0x7E39);


extern volatile __bit UA1 __at(0x7E39);


extern volatile __bit UA2 __at(0x7B69);


extern volatile __bit UERRIE __at(0x7AE1);


extern volatile __bit UERRIF __at(0x7B11);


extern volatile __bit ULPWUIN __at(0x7C00);


extern volatile __bit UOEMON __at(0x7AFE);


extern volatile __bit UPP0 __at(0x7AF8);


extern volatile __bit UPP1 __at(0x7AF9);


extern volatile __bit UPUEN __at(0x7AFC);


extern volatile __bit URSTIE __at(0x7AE0);


extern volatile __bit URSTIF __at(0x7B10);


extern volatile __bit USART1OD __at(0x7E70);


extern volatile __bit USART2OD __at(0x7E71);


extern volatile __bit USBEN __at(0x7B2B);


extern volatile __bit USBIE __at(0x7D04);


extern volatile __bit USBIF __at(0x7D0C);


extern volatile __bit USBIP __at(0x7D14);


extern volatile __bit UTEYE __at(0x7AFF);


extern volatile __bit UTRDIS __at(0x7AFB);


extern volatile __bit VCFG0 __at(0x7E16);


extern volatile __bit VCFG01 __at(0x7E0C);


extern volatile __bit VCFG1 __at(0x7E17);


extern volatile __bit VCFG11 __at(0x7E0D);


extern volatile __bit VREFM __at(0x7C02);


extern volatile __bit VREFP __at(0x7C03);


extern volatile __bit W4E __at(0x7BF1);


extern volatile __bit WAIT0 __at(0x7E5C);


extern volatile __bit WAIT1 __at(0x7E5D);


extern volatile __bit WAITB0 __at(0x7A46);


extern volatile __bit WAITB1 __at(0x7A47);


extern volatile __bit WAITE0 __at(0x7A40);


extern volatile __bit WAITE1 __at(0x7A41);


extern volatile __bit WAITM0 __at(0x7A42);


extern volatile __bit WAITM1 __at(0x7A43);


extern volatile __bit WAITM2 __at(0x7A44);


extern volatile __bit WAITM3 __at(0x7A45);


extern volatile __bit __attribute__((__deprecated__)) WCOL __at(0x7E37);


extern volatile __bit WCOL1 __at(0x7E37);


extern volatile __bit WCOL2 __at(0x7B67);


extern volatile __bit WM0 __at(0x7E58);


extern volatile __bit WM1 __at(0x7E59);


extern volatile __bit WPROG __at(0x7D35);


extern volatile __bit WR __at(0x7D31);


extern volatile __bit WRE __at(0x7C21);


extern volatile __bit WREN __at(0x7D32);


extern volatile __bit WRERR __at(0x7D33);


extern volatile __bit WRSP __at(0x7A51);


extern volatile __bit __attribute__((__deprecated__)) WUE __at(0x7BF1);


extern volatile __bit WUE1 __at(0x7BF1);


extern volatile __bit WUE2 __at(0x7BE1);


extern volatile __bit ZERO __at(0x7EC2);


extern volatile __bit nA2 __at(0x7B6D);


extern volatile __bit nADDRESS2 __at(0x7B6D);


extern volatile __bit nBOR __at(0x7E80);


extern volatile __bit nCM __at(0x7E85);


extern volatile __bit nPD __at(0x7E82);


extern volatile __bit nPOR __at(0x7E81);


extern volatile __bit nRBPU __at(0x7F8F);


extern volatile __bit nRI __at(0x7E84);


extern volatile __bit nT1SYNC __at(0x7E6A);


extern volatile __bit nT3SYNC __at(0x7BCA);


extern volatile __bit nTO __at(0x7E83);


extern volatile __bit nW2 __at(0x7B6A);


extern volatile __bit nWRITE2 __at(0x7B6A);

# 19 "C:\Program Files\Microchip\xc8\v2.40\pic\include\pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);

# 156
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);

# 192
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);


# 16 "main.h"
#pragma config WDTEN = OFF
#pragma config PLLDIV = 1
#pragma config STVREN = ON
#pragma config XINST = OFF
#pragma config DEBUG = OFF


#pragma config CPUDIV = OSC1
#pragma config CP0 = OFF


#pragma config FOSC = INTOSCPLLO
#pragma config FCMEN = OFF
#pragma config IESO = OFF


#pragma config WDTPS = 2048




#pragma config CCP2MX = DEFAULT
#pragma config MSSPMSK = MSK5

# 110
int edigit = 0;

# 15 "i2c.c"
void i2c_Init(void);
void i2c_Wait(void);
void i2c_Start(void);
void i2c_Restart(void);
void i2c_Stop(void);
void i2c_Write(unsigned char data);
void i2c_Address(unsigned char address, unsigned char mode);
int i2c_Read(unsigned char ack);
void write_i2c(long address, int data);
int read_i2c(long address);


void i2c_Init(void){



TRISD5=1;
TRISD6=1;

SSP2CON1 = 0b00101000;
SSP2CON2 = 0x00;

SSP2ADD = 39;

SSP2STAT = 0b11000000;

}


void i2c_Wait(void){
while ( ( SSP2CON2 & 0x1F ) || ( SSP2STAT & 0x04 ) );
}


void i2c_Start(void)
{
i2c_Wait();
SEN2=1;
}


void i2c_Restart(void){
i2c_Wait();
RSEN2=1;
}


void i2c_Stop(void)
{
i2c_Wait();
PEN2=1;
}


void i2c_Write(unsigned char data)
{
i2c_Wait();
SSP2BUF = data;
}



void i2c_Address(unsigned char address, unsigned char mode)
{
unsigned char l_address;

l_address=address;
l_address += mode;
i2c_Wait();
SSP2BUF = l_address;
}


int i2c_Read(unsigned char ack)
{



unsigned char i2cReadData;

i2c_Wait();
RCEN2=1;
i2c_Wait();
i2cReadData = SSP2BUF;
i2c_Wait();
if ( ack )
ACKDT2=0;
else
ACKDT2=1;
ACKEN2=1;

return( i2cReadData );
}

# 112
void write_i2c(long address, int data)
{
i2c_Start();
i2c_Address(0xA0, 0);
i2c_Write((unsigned char)(address/0x100));
i2c_Write((unsigned char)(address&0xFF));
i2c_Write((unsigned char)data);
i2c_Stop();
}

int read_i2c(long address)
{
int read_byte;


i2c_Start();
i2c_Address(0xA0, 0);
i2c_Write((unsigned char)(address/0x100));
i2c_Write((unsigned char)(address&0xFF));
i2c_Restart();
i2c_Address(0xA0, 1);
read_byte = i2c_Read(0);



i2c_Stop();
return (read_byte);

}

