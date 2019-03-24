#include<pic.h>
#include <math.h>
#include<pic16f1823.h>
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_ON & FCMEN_ON); 
__CONFIG(WRT_OFF & PLLEN_OFF & STVREN_ON &  LVP_OFF) ;
#define _XTAL_FREQ 16000000
void delay(unsigned int );
void USART_SENDDATA(unsigned char );
void txdata (unsigned char );
void ADC_CONV(void);
unsigned char alcor=0;	//Result Variable
unsigned char adcs=0 , diagno;
unsigned char adcrl=0,t , al=0 ,h=0,k=0 ,start=0X55 , add;
unsigned char adcrz ;
unsigned int adcrx=512,adcry=512, r , sd=0,ptadcrx,ptadcry;
unsigned char  rfr=0 , x, y,j,intdata[]={0,1,4,9,16,25,36,49,64,81,100,121,144,169,196,225};	// ADC & RF result Variable

void main(void)
{

	/*****Internal Oscillator Configuration*****/
	OSCCON = 0x7B;  // Disable-PLL, 16Mhz Frquency of internal OSC.and Internal Oscilator Block
	OSCTUNE = 0x00; // TUN<5:0>-00000

	/*****ALTERNATE PIN FUNCTION CONTROL REGISTER*****/
	APFCON=0X00;
	INTCON = 0XC0; // GIE= 1, PEIE =1 INTERRUPT EN
	/**** DATA Direction SET ****/
	TRISC=0x0D;// PC0-Ref of Alcohol, PC1- ST,PC2- Alcohol Sence, PC3- IR Sence,PC4-Tx  ,PC5- demo led 
	TRISA=0x3F;// PA0-Prog.Data, PA1- P_clk,PA2- Xout, PA3- MCLR, PA4-YOUT, PA5- status                                        
   
	/**** Define  Analog in Pins ****/
	ANSELA = 0x14; // RA2=xout, RA4=yout as analog input
	ANSELC = 0x05; // RC1 as analog input 
    
	/**** USART INIT ****/
	SPBRGH  = 0X00;
	SPBRGL = 25; // BAUD RATE OF 9600
	TXSTAbits.BRGH=0;
	BAUDCONbits.BRG16=0;
	TXSTAbits.SYNC=0;	
	RCSTAbits.SPEN=1;
	TXSTAbits.TX9=0;
	TXSTAbits.SENDB=0;
	RCSTAbits.CREN=0;
	BAUDCONbits.SCKP=0;
	PIR1bits.TXIF=0;
	TXSTAbits.TXEN=1; // TXEN=1
//	PIE1bits.TXIE=1;
	/**** Analog to Digital Converter ****/
	ADCON1bits.ADCS=5;
	ADCON1bits.ADPREF=0;
	ADCON1bits.ADFM=1;


	/**** Comparator INIT ****/
	CM2CON0= 0x90; // C2ON =1, C2POL=1, C2SP=0
	PIE2 = 0X40; // C2IE =1 Comparator interrupt EN
	CM2CON1= 0X02; // C2INTP= 1, C2PCH= 00, C2NCH= 10
	//INTCONbits.GIE = 1; 
	for(k=0;k<2;k++)
	{
	PORTCbits.RC5=~PORTCbits.RC5; // indication led
	__delay_ms(1000);
	}
    /*************************/
	PORTCbits.RC1=1; //Shock senser Self test ON
    delay(1000);
	PORTCbits.RC1=0; ////Shock senser Self test OFF
	delay(1000);
	while(PORTAbits.RA5==1)
	{    
		PORTCbits.RC5=0; // indication led
	}
    PORTCbits.RC5=0; // indication led
    USART_SENDDATA(rfr);
	while(1)
	{  
		
		if(PORTCbits.RC3 == 0)
		{
			if(CM2CON0bits.C2OUT==1)
			{
			PORTCbits.RC5=1;   // indication led
	        PIR2bits.C2IF=0;
			rfr= 0X65;
			
			}
	  		else
			{
			PORTCbits.RC5=0;   // indication led
			rfr= 0X75;
			}
			sd=5;
			add=0X06;
			ADC_CONV();
			if(adcrx>=11 | adcry>=26)
			{
			ptadcrx=adcrx;
			ptadcry=adcry;
			ADC_CONV();
			if(ptadcrx>adcrx)
			{ adcrx=ptadcrx; }
			if(ptadcry>adcry)
			{ adcry=ptadcry; }
			sd=500;
			x=adcrx/10;
            y=adcry/25;
			adcrz=intdata[x]+intdata[y];
			rfr=sqrt(adcrz);
			add=0X15;
			}
		}
		else
		{
		T1CONbits.TMR1ON=0;
		PORTCbits.RC5=0; // indication led
		rfr=0X45;
		add=0X06;
		sd=5;
		}

		for(h=0;h<sd;h++)
		{
		USART_SENDDATA(start);
	    USART_SENDDATA(rfr);
		USART_SENDDATA(add);
		USART_SENDDATA(add+rfr);

		}
	    
 
	}

}

void USART_SENDDATA(unsigned char udata)
{
	TXREG= udata; // Send data on TX PIN
	while(PIR1bits.TXIF==0);
	PIR1bits.TXIF=0;
}
void txdata (unsigned char vdata )
{
		for(h=0;h<sd;h++)
		{
		USART_SENDDATA(start);
	    USART_SENDDATA(vdata);
		USART_SENDDATA(add);
		USART_SENDDATA(add+rfr);
		}
}

void ADC_CONV(void)
{
		
    /**** ADC Xout INIT ****/
	ADCON0bits.CHS = 2;  // channel AN2 select
	ADCON0bits.ADON= 1;
	PIR1bits.ADIF= 0;    // flag of ADC clear
    delay(10);
	ADCON0bits.GO = 1;   // GO=1
	while(ADCON0bits.GO == 1);		//wait for conversion complete
	adcrx= (ADRESH<<8)+ADRESL; 
	PIR1bits.ADIF= 0; 		

	/**** ADC Yout INIT ****/
	ADCON0bits.CHS = 3; // channel AN3 select
	ADCON0bits.ADON= 1;
	PIR1bits.ADIF= 0; // flag of ADC clear
    delay(10);
	ADCON0bits.GO = 1; // GO=1
	while(ADCON0bits.GO == 1);		//wait for conversion complete
	adcry= (ADRESH<<8)+ADRESL; 
	PIR1bits.ADIF= 0; 	

	if(adcrx >= 0x1FF )
	{
	 	adcrx=	adcrx - 0x1FF;
	}
	else
	{
		adcrx=	0x1FF - adcrx ;
	}
    if(adcry >= 0x1FF )
	{
	 	adcry=	adcry - 0x1FF;
	}
	else
	{
		adcry=	0x1FF - adcry ;
	}
//	x=adcrx/10;
//	y=adcry/25;
}

void delay (unsigned int d)
{
unsigned int i;
for(i=0; i<=d; i++);
}

//void interrupt ISR(void)
//{
//
// if(PIR1bits.TXIF==1)
//{
//PIR1bits.TXIF=0;
//TXREG= udata;
//}

//	if(PIR1bits.ADIF==1)
//	{
//		PIR1bits.ADIF=0;
//		if(ADCON0bits.CHS ==2)
//		{
//			adcrx= (ADRESH<<8)+ADRESL;
//			ADCON0bits.CHS = 3;  // channel AN3 select
//		}
//		else
//		{
//			adcry= (ADRESH<<8)+ADRESL;
//			ADCON0bits.CHS = 2;  // channel AN2 select
//		}
//		ADCON0bits.ADON= 0;
//	}
//	if(PIR1bits.TMR1IF==1)
//    {
//		PIR1bits.TMR1IF=0;
//		ADCON0bits.ADON= 1;
//		TMR1H=0XF8;
//		TMR1L=0X2F;
//		for(j=0; j<=2; j++);
//		ADCON0bits.GO = 1;
//	}
//}