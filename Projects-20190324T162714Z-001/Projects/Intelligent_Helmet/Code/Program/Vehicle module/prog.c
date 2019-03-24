#include<p24fxxxx.h>
#include<string.h>

_CONFIG1 (0X7F7F);
_CONFIG2 (0X77CF);
_CONFIG3 (0XFDFF);

#define RS PORTDbits.RD2
#define RW PORTBbits.RB3 
#define EN PORTBbits.RB4
#define IGNI PORTDbits.RD0
void lcd_cmd(unsigned char);
void lcd_data(unsigned char );
void lcd_string(unsigned char *);
void delay(unsigned int );
void TIMERdelay(unsigned int );
void initUART( void);
int putcharUART( int );
void putstringUART( char *);
unsigned char getbyte(void);
void gpsinit(void);
void gpsfun(void);
void GPSCAL(void);
void compare(void);
void find_comma(void);
void lcd_latitude(void);		 //Function to display Latitude
void lcd_shape(void);	      //Function to create shape of degree
void lcd_longitude(void);
unsigned char rfdata=0 ,h ,start=0X55 , add, data ,checksum ,rfadd,rfdata_v=0;
char info[45];    // Recived Char ={"$GPGGA,002454,3553.5295,N,13938.6570,E,"};
unsigned char test[7]={"$GPGGA"};
unsigned char comma_position[15];
unsigned int check=0 , y ,k ,tout=0;
unsigned char y1=1,y2=1,y3=1; 
int main(void)
{
// Frequence set to 8MHz
CLKDIVbits.ROI=0;
CLKDIVbits.DOZE=0;
CLKDIVbits.DOZEN=0;
CLKDIVbits.RCDIV=0;  // 8Mhz 
CLKDIVbits.CPDIV=2;   
CLKDIVbits.PLLEN=0;   //
CLKDIVbits.G1CLKSEL=0; //

// setting RPI pins

__builtin_write_OSCCONL(OSCCON & 0xBF);

RPINR18bits.U1RXR=22; //Assigning GSM RX to USART1 at RP22
RPINR19bits.U2RXR=20; //Assigning GPS RX to USART2 at RP20
RPINR17bits.U3RXR=12; //Assigning RF RX to USART3 at RP12

RPOR12bits.RP25R=3;  //Assigning GSM TX=3 to USART1 at RP25
//RPOR11bits.RP23R=5;  //Assigning GPS TX=5 to USART2 at RP23

__builtin_write_OSCCONL(OSCCON | 0x40);

// Port direction setting
TRISB=0X0003;
TRISC=0X0000;
TRISD=0X0000;
TRISE=0X0000;
TRISF=0X0000;

TRISDbits.TRISD2=0;   //lcd rs
TRISDbits.TRISD3=1;   //GSM RX
TRISDbits.TRISD11=1;  //RF  RX
TRISBbits.TRISB1=1;   //PGEC1
TRISBbits.TRISB0=1;   //PGED1

TRISDbits.TRISD5=1;   //GPS RX
TRISDbits.TRISD0=0;   //LED
TRISDbits.TRISD4=0;   //GSM RX

PORTB=0X0000;
PORTC=0X0000;
PORTD=0X0000;
PORTE=0X0000;
PORTF=0X0000;

//////////////////////////////////////////////////////////////////
// RF RX USART MODULE
U3MODEbits.PDSEL=0; //8-bit data, no parity
U3MODEbits.STSEL=0; //One Stop bit
U3MODEbits.BRGH=0;  //Standard-Speed mode (16 BRG clock cycles per bit)
U3BRG=0x19;         // Load 9600 baud value 25(dec)
U3MODE= 0x0800;     // 8 bit tx and no parity bit
delay(1);
U3MODE= 0x8800;
U3STA=0x2110;       // RX ENABLE=1, 

// INTERRUPT Enable
INTCON1=0x0000;
IPC20=0x0300;       //  RF MODULE PRIORITY HIGH
IPC7=0x0200;        //  GPS MODULE PRIORITY MEDIUM
IPC2=0x1000;        //  GSM MODULE PRIORITY LOW

// Flag Clear
IFS0=0x0000; 
IFS1=0x0000;
IFS5=0x0000;

// INTERRUPT ENABLE
SRbits.IPL=0;
INTCON1bits.NSTDIS=1;
CORCONbits.IPL3=0;
//IPC2bits.U1RXIP=2;  //Interrupt PRIORITY is set to 2
//IEC0=0X0800;	    //Interrupt For UART1 RX1

//IPC7bits.U2RXIP=3;  //Interrupt PRIORITY is set to 3
//IEC1=0X4000;	    //Interrupt For UART2 RX2 for GPS

INTCON1bits.NSTDIS=1;
IPC20bits.U3RXIP=4; // Interrupt PRIORITY is set to 4
IFS5bits.U3RXIF=0;  // Flag is clear
IEC5=0X0000;	    // interrupt For UART3 RX3 
/////////////////////////////////////////////////////////////////////



TIMERdelay(50);


/**** LCD Module ****/
PORTB=PORTB & 0XFFF7; //RW
TIMERdelay(2);
lcd_cmd(0x0038);      //DISPLAY ON, CURSOR BLINKING
TIMERdelay(2);
lcd_cmd(0x000E);      //DISPLAY ON, CURSOR BLINKING
TIMERdelay(2);
lcd_cmd(0x0006);	    //increment cursor next possision
TIMERdelay(2);
lcd_cmd(0x0001);      // Clear LCD
TIMERdelay(2);
lcd_cmd(0x0080);      // FIRST LINE
TIMERdelay(2);

lcd_string("   COLLISION   ");
TIMERdelay(2);

lcd_cmd(0xC0);      // FIRST LINE
lcd_string("DETECT MODULE");

initUART();
TIMERdelay(500);
putstringUART("AT");
TIMERdelay(500);
gpsinit();
TIMERdelay(2000);
gpsfun();
gpsfun();

while(1)
{
for(h=0 ; h<20 ;h++)
{
	start=getbyte();
	if(start==0X55)
	{
		data=getbyte();
		add=getbyte();
		checksum=getbyte();
		if(checksum==( add + data))
		{
		rfdata=data;
		rfadd=add;
		}
	}

}
if(rfadd==0X06)
{
		if(rfdata==0X45 && y1==1)
		{
			lcd_cmd(0x0001);      // Clear LCD
			TIMERdelay(2);
			lcd_cmd(0x0080);      // FIRST LINE
			TIMERdelay(2);
			lcd_string("Helmet NOT");
			TIMERdelay(2);
			lcd_cmd(0x00C0);      // FIRST LINE
			TIMERdelay(2);
			lcd_string("Weared");
			IGNI=0;
			y1=0; y2=1;y3=1;
		}
		if(rfdata==0X65 && y2==1)
		{
			lcd_cmd(0x0001);      // Clear LCD
			TIMERdelay(2);
			lcd_cmd(0x0080);      // FIRST LINE
			TIMERdelay(2);
			lcd_string("Alcohol detect");
			IGNI=0;
			y1=1; y2=0;y3=1;
		}
		
		if(rfdata==0X75 && y3==1)
		{
			lcd_cmd(0x0001);      // Clear LCD
			TIMERdelay(2);
			lcd_cmd(0x0080);      // FIRST LINE
			TIMERdelay(2);
			lcd_string("Helmet Weared");
			IGNI=1;
			y1=1; y2=1;y3=0;
		}

}                    
if(rfadd==0X15)
{
	while(1)
	{
	lcd_cmd(0x0001);      // Clear LCD
	TIMERdelay(2);
	lcd_cmd(0x0080);      // FIRST LINE
	TIMERdelay(2);
	lcd_string("Accident with");
	lcd_cmd(0x00C0);      // FIRST LINE
	TIMERdelay(2);
	lcd_data(((rfdata & 0XF0)>>4)+0X30 );
	TIMERdelay(2);
	lcd_data((rfdata & 0X0F)+0X30 );
	lcd_data('g');
	TIMERdelay(2);
	lcd_string(" Acceln...... ");
	TIMERdelay(2000);
	gpsfun();
	}
}
}
return 0;
}
void gpsfun(void)
{
	U2STAbits.OERR=0; //  overflow error is set to zero
	GPSCAL();
	compare();     // finding current position through GPS
}
/*********************************************************/
/**** LCD Functions ****/
//LCD command function
void lcd_cmd(unsigned char item)
{
	RS= 0;
	PORTE = 0X00FF & item;
	EN=1;
	delay(50);
	EN=0;
	
} 
 
// LCD DATA SENDING FUNCTION
void lcd_data(unsigned char item)
{
	delay(50);
	RS=1;
	PORTE = 0X00FF & item;
	EN=1;
	delay(50);
	EN=0;			    
}
 
 // LCD STRING SENDING FUNCTION 

void lcd_string(unsigned char *str)
{
	int i=0;
	while(str[i]!='\0')
	{
        lcd_data(str[i]);
        i++;
        TIMERdelay(10);
    }
        
}
/***************************************************************/

unsigned char getbyte(void)
{
	
	U3STAbits.OERR=0;
	while(IFS5bits.U3RXIF==0 );
	rfdata_v=U3RXREG;
	IFS5bits.U3RXIF=0;
    return rfdata_v;
	
}
void gpsinit(void)
{
	// GPS USART MODULE
	U2MODEbits.PDSEL=0; //8-bit data, no parity
	U2MODEbits.STSEL=0; //One Stop bit
	U2MODEbits.BRGH=0;  //Standard-Speed mode (16 BRG clock cycles per bit)
	U2BRG=0x33; // Load 4800 baud value 51(dec)
	U2MODE= 0x0800;// 8 bit tx and no parity bit
	delay(1);
	U2MODE= 0x8800;
	U2STA=0x2110;// RX ENABLE=1, 

}
void GPSCAL(void)
{
	while(check<=45)
	{  
     	if(IFS1bits.U2RXIF==1) // check for uart data receive
		{   
			U2STAbits.OERR=0;
  			info[check++]=U2RXREG;	  //Read U2RXREG
  			if(check<7)	         //Condition to check the required data
      		{
				if(info[check-1]!=test[check-1])
				check=0;
      		}
   			IFS1bits.U2RXIF=0;  
		}

       }
}

void compare(void)
{  
	//IE=0x00;	       //Interrupt disable 
	find_comma();	   //Function to detect position of comma in the string
	lcd_latitude();    //Function to show Latitude
	TIMERdelay(2000);
	lcd_longitude();   //Function to show Longitude
	TIMERdelay(2000);
	check=0;
	//IE=0x90;		   //Interrupt enable
}


void find_comma(void)
{
	unsigned int i,count=0;
	for(i=0;i<70;i++)
	{	
		if(info[i] == ',')
		{
			comma_position[count++]=i;
		}
    }
}

void lcd_latitude(void)		 //Function to display Latitude
{
	unsigned int c2=comma_position[1]; //Position of second comma
	lcd_shape();
	lcd_cmd(0x01);	         // Clear LCD display
	TIMERdelay(2);
	lcd_cmd(0x0080);	         //Move cursor to position 6 of line 1
	TIMERdelay(2);
	lcd_string("LATITUDE");	 //Showing Latitude
	TIMERdelay(2);
	lcd_cmd(0x00C0);			 //Beginning of second line  
	TIMERdelay(2);
	lcd_data(info[c2+1]);	
	lcd_data(info[c2+2]);
	lcd_data(0);			 //Degree symbol
	lcd_data(info[c2+3]);	
	lcd_data(info[c2+4]);
	lcd_data(info[c2+5]);
	lcd_data(info[c2+6]);
	lcd_data(info[c2+7]);
	lcd_data(info[c2+8]);
	lcd_data(info[c2+9]);
	lcd_data(0x27);          //ASCII of minute sign(')
	lcd_data(info[c2+10]);
	lcd_data(info[c2+11]);
	delay(250);
} 

void lcd_shape(void)	      //Function to create shape of degree
{
	lcd_cmd(64);
	lcd_data(10);
	lcd_data(17);
	lcd_data(17);
	lcd_data(10);
	lcd_data(0);
	lcd_data(0);
	lcd_data(0);
	lcd_data(0);
}

void lcd_longitude(void)
{
	unsigned int c4=comma_position[3];
	lcd_cmd(0x01);	            //Clear LCD display
	TIMERdelay(2);
	lcd_cmd(0x0080);	            //Move cursor to position 4 of line 1
	TIMERdelay(2);
	lcd_string("LONGITUDE");		//Showing Longitude
	TIMERdelay(2);
	lcd_cmd(0x00C0);			    //Begining of second line 
	TIMERdelay(2); 
	lcd_data(info[c4+1]);
	lcd_data(info[c4+2]);
	lcd_data(info[c4+3]);
	lcd_data(0);
	lcd_data(info[c4+4]);
	lcd_data(info[c4+5]);
	lcd_data(info[c4+6]);
	lcd_data(info[c4+7]);
	lcd_data(info[c4+8]);
	lcd_data(info[c4+9]);
	lcd_data(info[c4+10]);
	lcd_data(0x27);               //ASCII of minute sign(')
	lcd_data(info[c4+11]);
	lcd_data(info[c4+12]);
	delay(250);
}

void delay(unsigned int d)
{
unsigned int i,j;
for(i=0; i<d ; i++);
	
}
void TIMERdelay(unsigned int d1)
{
	unsigned int i;
	T2CON=0X0000;
	// 1msec time delay.
	for(i=0; i<d1; i++)
	{
		PR2=4000;   //IEC0bits.T2IE=1;
		T2CONbits.TON=1;
		while(IFS0bits.T2IF==0);
		IFS0bits.T2IF=0;
	}
	T2CONbits.TON=0;
}

void initUART( void)
{
	U1BRG 	= 103;    
	U1MODE 	= 0x8808;
	U1STA 	= 0x0400;
} // initUART


int putcharUART( int c)
{
   
	while ( U1STAbits.UTXBF);   // wait while Tx buffer full
	U1TXREG = c;
	return c;
} // putcharUART

void putstringUART( char *s)
{
   
	while( *s)			// loop until *s == '\0' the  end of the string
    	
  	putcharUART( *s++);	// send the character and point to the next one
    putcharUART( '\r');       // terminate with a cr / line feed
}


void __attribute__((auto_psv)) _ISR _U3RXInterrupt(void)
{
	IFS5bits.U3RXIF=0;
    U3STAbits.OERR=0;
	rfdata=U3RXREG;
}


