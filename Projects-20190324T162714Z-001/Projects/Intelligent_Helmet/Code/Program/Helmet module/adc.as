opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F1823
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 4 "D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	dw 0xFFFC & 0xFFE7 & 0xFFFF & 0xFFBF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFFF ;#
# 5 "D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	dw 0xFFFF & 0xFEFF & 0xFFFF & 0xDFFF ;#
	FNCALL	_main,_delay
	FNCALL	_main,_USART_SENDDATA
	FNCALL	_main,_ADC_CONV
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lbtoft
	FNCALL	_main,_sqrt
	FNCALL	_main,___fttol
	FNCALL	_sqrt,___ftge
	FNCALL	_sqrt,___ftmul
	FNCALL	_sqrt,___ftsub
	FNCALL	___ftsub,___ftadd
	FNCALL	___lbtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_ADC_CONV,_delay
	FNROOT	_main
	global	_adcrx
	global	_adcry
	global	_start
	global	_intdata
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	line	15

;initializer for _adcrx
	retlw	0
	retlw	02h


;initializer for _adcry
	retlw	0
	retlw	02h

	line	13

;initializer for _start
	retlw	055h
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	16

;initializer for _intdata
	retlw	0
	retlw	01h
	retlw	04h
	retlw	09h
	retlw	010h
	retlw	019h
	retlw	024h
	retlw	031h
	retlw	040h
	retlw	051h
	retlw	064h
	retlw	079h
	retlw	090h
	retlw	0A9h
	retlw	0C4h
	retlw	0E1h
	global	_errno
	global	_ptadcrx
	global	_ptadcry
	global	_r
	global	_sd
	global	_adcrl
	global	_adcrz
	global	_adcs
	global	_add
	global	_al
	global	_alcor
	global	_diagno
	global	_h
	global	_j
	global	_k
	global	_rfr
	global	_t
	global	_x
	global	_y
	global	_INTCON
_INTCON	set	11
	global	_PIR1bits
_PIR1bits	set	17
	global	_PIR2bits
_PIR2bits	set	18
	global	_PORTAbits
_PORTAbits	set	12
	global	_PORTCbits
_PORTCbits	set	14
	global	_T1CONbits
_T1CONbits	set	24
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_ADCON0bits
_ADCON0bits	set	157
	global	_ADCON1bits
_ADCON1bits	set	158
	global	_ADRESH
_ADRESH	set	156
	global	_ADRESL
_ADRESL	set	155
	global	_OSCCON
_OSCCON	set	153
	global	_OSCTUNE
_OSCTUNE	set	152
	global	_PIE2
_PIE2	set	146
	global	_TRISA
_TRISA	set	140
	global	_TRISC
_TRISC	set	142
	global	_APFCON
_APFCON	set	285
	global	_CM2CON0
_CM2CON0	set	275
	global	_CM2CON0bits
_CM2CON0bits	set	275
	global	_CM2CON1
_CM2CON1	set	276
	global	_EEADR
_EEADR	set	401
	global	_ANSELA
_ANSELA	set	396
	global	_ANSELC
_ANSELC	set	398
	global	_BAUDCONbits
_BAUDCONbits	set	415
	global	_EECON1
_EECON1	set	405
	global	_EECON2
_EECON2	set	406
	global	_EEDATA
_EEDATA	set	403
	global	_RCSTAbits
_RCSTAbits	set	413
	global	_SPBRGH
_SPBRGH	set	412
	global	_SPBRGL
_SPBRGL	set	411
	global	_TXREG
_TXREG	set	410
	global	_TXSTAbits
_TXSTAbits	set	414
	global	_RD
_RD	set	3240
	global	_WR
_WR	set	3241
	global	_WREN
_WREN	set	3242
	file	"adc.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_errno:
       ds      2

_ptadcrx:
       ds      2

_ptadcry:
       ds      2

_r:
       ds      2

_sd:
       ds      2

_adcrl:
       ds      1

_adcrz:
       ds      1

_adcs:
       ds      1

_add:
       ds      1

_al:
       ds      1

_alcor:
       ds      1

_diagno:
       ds      1

_h:
       ds      1

_j:
       ds      1

_k:
       ds      1

_rfr:
       ds      1

_t:
       ds      1

_x:
       ds      1

_y:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	line	15
_adcrx:
       ds      2

psect	dataBANK0
	file	"D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
_adcry:
       ds      2

psect	dataBANK0
	file	"D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	line	13
_start:
       ds      1

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	line	16
_intdata:
       ds      16

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	018h
	fcall	clear_ram
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp,f
initloop:
	moviw fsr0++
	movwi fsr1++
	decfsz btemp
	goto initloop
	retlw 0
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2
	movlw low(__pidataBANK0)
	movwf fsr0l
	movlw high(__pidataBANK0)|80h
	movwf fsr0h
	movlw low(__pdataBANK0)
	movwf fsr1l
	movlw high(__pdataBANK0)
	movwf fsr1h
	movlw 05h
	fcall init_ram
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2
	movlw low(__pidataBANK1)
	movwf fsr0l
	movlw high(__pidataBANK1)|80h
	movwf fsr0h
	movlw low(__pdataBANK1)
	movwf fsr1l
	movlw high(__pdataBANK1)
	movwf fsr1h
	movlw 010h
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_USART_SENDDATA
?_USART_SENDDATA:	; 0 bytes @ 0x0
	global	??_USART_SENDDATA
??_USART_SENDDATA:	; 0 bytes @ 0x0
	global	?_ADC_CONV
?_ADC_CONV:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	USART_SENDDATA@udata
USART_SENDDATA@udata:	; 1 bytes @ 0x0
	global	delay@d
delay@d:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	delay@i
delay@i:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	??_ADC_CONV
??_ADC_CONV:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	2
	global	?___fttol
?___fttol:	; 4 bytes @ 0x9
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x9
	ds	4
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0xD
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0xA
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xA
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0xA
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0xA
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xA
	ds	3
	global	??___lbtoft
??___lbtoft:	; 0 bytes @ 0xD
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xD
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xD
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x10
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x10
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x14
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x14
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x15
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x15
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x16
	ds	1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x17
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x17
	ds	1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x18
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x19
	ds	1
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x1A
	ds	3
	global	?_sqrt
?_sqrt:	; 3 bytes @ 0x1D
	global	sqrt@y
sqrt@y:	; 3 bytes @ 0x1D
	ds	3
	global	??_sqrt
??_sqrt:	; 0 bytes @ 0x20
	ds	3
	global	sqrt@og
sqrt@og:	; 3 bytes @ 0x23
	ds	3
	global	sqrt@z
sqrt@z:	; 3 bytes @ 0x26
	ds	3
	global	sqrt@i
sqrt@i:	; 1 bytes @ 0x29
	ds	1
	global	sqrt@q
sqrt@q:	; 3 bytes @ 0x2A
	ds	3
	global	sqrt@x
sqrt@x:	; 3 bytes @ 0x2D
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x30
	ds	3
;;Data sizes: Strings 0, constant 0, data 21, bss 24, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     51      80
;; BANK1           32      0      16

;;
;; Pointer list with targets:

;; ?___lbtoft	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?_sqrt	long  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lbtoft
;;   _sqrt->___lbtoft
;;   ___ftsub->___fttol
;;   ___lbtoft->___fttol
;;   ___ftmul->___fttol
;;   ___ftadd->___fttol
;;   _ADC_CONV->_delay
;;   ___fttol->___ftge
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sqrt
;;   _sqrt->___ftsub
;;   ___ftsub->___ftadd
;;   ___lbtoft->___fttol
;;   ___ftmul->___fttol
;;   ___ftadd->___fttol
;;
;; Critical Paths under _main in BANK1
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    2909
;;                                             48 BANK0      3     3      0
;;                              _delay
;;                     _USART_SENDDATA
;;                           _ADC_CONV
;;                            ___lwdiv
;;                           ___lbtoft
;;                               _sqrt
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (1) _sqrt                                                19    16      3    2150
;;                                             29 BANK0     19    16      3
;;                             ___ftge
;;                            ___ftmul
;;                            ___ftsub
;;                           ___lbtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftsub                                              6     0      6    1094
;;                                             23 BANK0      6     0      6
;;                            ___ftadd
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___lbtoft                                             8     5      3     231
;;                                             13 COMMON     1     1      0
;;                                             10 BANK0      7     4      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     535
;;                                             10 BANK0     16    10      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             13     7      6    1049
;;                                             10 BANK0     13     7      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _ADC_CONV                                             4     4      0      46
;;                                              4 COMMON     4     4      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                               9     3      6     136
;;                                              0 COMMON     9     3      6
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                              9 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                             ___ftge (ARG)
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _USART_SENDDATA                                       1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;   _USART_SENDDATA
;;   _ADC_CONV
;;     _delay
;;   ___lwdiv
;;   ___lbtoft
;;     ___ftpack
;;     ___fttol (ARG)
;;       ___ftge (ARG)
;;       ___ftpack (ARG)
;;   _sqrt
;;     ___ftge
;;     ___ftmul
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;     ___ftsub
;;       ___ftadd
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftge (ARG)
;;           ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;     ___lbtoft (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftge (ARG)
;;         ___ftpack (ARG)
;;     ___fttol (ARG)
;;       ___ftge (ARG)
;;       ___ftpack (ARG)
;;   ___fttol
;;     ___ftge (ARG)
;;     ___ftpack (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM              70      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      E       E       2      100.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       4       3        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;ABS                  0      0      6E       4        0.0%
;;BITBANK0            50      0       0       5        0.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BANK0               50     33      50       6      100.0%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BITBANK1            20      0       0       7        0.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BANK1               20      0      10       8       50.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;DATA                 0      0      72       9        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BITSFR14             0      0       0      15        0.0%
;;SFR14                0      0       0      15        0.0%
;;BITSFR15             0      0       0      16        0.0%
;;SFR15                0      0       0      16        0.0%
;;BITSFR16             0      0       0      17        0.0%
;;SFR16                0      0       0      17        0.0%
;;BITSFR17             0      0       0      18        0.0%
;;SFR17                0      0       0      18        0.0%
;;BITSFR18             0      0       0      19        0.0%
;;SFR18                0      0       0      19        0.0%
;;BITSFR19             0      0       0      20        0.0%
;;SFR19                0      0       0      20        0.0%
;;BITSFR20             0      0       0      21        0.0%
;;SFR20                0      0       0      21        0.0%
;;BITSFR21             0      0       0      22        0.0%
;;SFR21                0      0       0      22        0.0%
;;BITSFR22             0      0       0      23        0.0%
;;SFR22                0      0       0      23        0.0%
;;BITSFR23             0      0       0      24        0.0%
;;SFR23                0      0       0      24        0.0%
;;BITSFR24             0      0       0      25        0.0%
;;SFR24                0      0       0      25        0.0%
;;BITSFR25             0      0       0      26        0.0%
;;SFR25                0      0       0      26        0.0%
;;BITSFR26             0      0       0      27        0.0%
;;SFR26                0      0       0      27        0.0%
;;BITSFR27             0      0       0      28        0.0%
;;SFR27                0      0       0      28        0.0%
;;BITSFR28             0      0       0      29        0.0%
;;SFR28                0      0       0      29        0.0%
;;BITSFR29             0      0       0      30        0.0%
;;SFR29                0      0       0      30        0.0%
;;BITSFR30             0      0       0      31        0.0%
;;SFR30                0      0       0      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       3       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay
;;		_USART_SENDDATA
;;		_ADC_CONV
;;		___lwdiv
;;		___lbtoft
;;		_sqrt
;;		___fttol
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 12
; Regs used in _main: [allreg]
	line	22
	
l4768:	
;adc.c: 22: OSCCON = 0x7B;
	movlw	(07Bh)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	23
	
l4770:	
;adc.c: 23: OSCTUNE = 0x00;
	clrf	(152)^080h	;volatile
	line	26
	
l4772:	
;adc.c: 26: APFCON=0X00;
	movlb 2	; select bank2
	clrf	(285)^0100h	;volatile
	line	27
;adc.c: 27: INTCON = 0XC0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	29
;adc.c: 29: TRISC=0x0D;
	movlw	(0Dh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	30
;adc.c: 30: TRISA=0x3F;
	movlw	(03Fh)
	movwf	(140)^080h	;volatile
	line	33
;adc.c: 33: ANSELA = 0x14;
	movlw	(014h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	34
;adc.c: 34: ANSELC = 0x05;
	movlw	(05h)
	movwf	(398)^0180h	;volatile
	line	37
	
l4774:	
;adc.c: 37: SPBRGH = 0X00;
	clrf	(412)^0180h	;volatile
	line	38
	
l4776:	
;adc.c: 38: SPBRGL = 25;
	movlw	(019h)
	movwf	(411)^0180h	;volatile
	line	39
	
l4778:	
;adc.c: 39: TXSTAbits.BRGH=0;
	bcf	(414)^0180h,2	;volatile
	line	40
	
l4780:	
;adc.c: 40: BAUDCONbits.BRG16=0;
	bcf	(415)^0180h,3	;volatile
	line	41
	
l4782:	
;adc.c: 41: TXSTAbits.SYNC=0;
	bcf	(414)^0180h,4	;volatile
	line	42
	
l4784:	
;adc.c: 42: RCSTAbits.SPEN=1;
	bsf	(413)^0180h,7	;volatile
	line	43
	
l4786:	
;adc.c: 43: TXSTAbits.TX9=0;
	bcf	(414)^0180h,6	;volatile
	line	44
	
l4788:	
;adc.c: 44: TXSTAbits.SENDB=0;
	bcf	(414)^0180h,3	;volatile
	line	45
	
l4790:	
;adc.c: 45: RCSTAbits.CREN=0;
	bcf	(413)^0180h,4	;volatile
	line	46
	
l4792:	
;adc.c: 46: BAUDCONbits.SCKP=0;
	bcf	(415)^0180h,4	;volatile
	line	47
	
l4794:	
;adc.c: 47: PIR1bits.TXIF=0;
	movlb 0	; select bank0
	bcf	(17),4	;volatile
	line	48
	
l4796:	
;adc.c: 48: TXSTAbits.TXEN=1;
	movlb 3	; select bank3
	bsf	(414)^0180h,5	;volatile
	line	51
	
l4798:	
;adc.c: 51: ADCON1bits.ADCS=5;
	movlb 1	; select bank1
	movf	(158)^080h,w	;volatile
	andlw	not (((1<<3)-1)<<4)
	iorlw	(05h & ((1<<3)-1))<<4
	movwf	(158)^080h	;volatile
	line	52
	
l4800:	
;adc.c: 52: ADCON1bits.ADPREF=0;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(158)^080h,f	;volatile
	line	53
	
l4802:	
;adc.c: 53: ADCON1bits.ADFM=1;
	bsf	(158)^080h,7	;volatile
	line	57
	
l4804:	
;adc.c: 57: CM2CON0= 0x90;
	movlw	(090h)
	movlb 2	; select bank2
	movwf	(275)^0100h	;volatile
	line	58
	
l4806:	
;adc.c: 58: PIE2 = 0X40;
	movlw	(040h)
	movlb 1	; select bank1
	movwf	(146)^080h	;volatile
	line	59
	
l4808:	
;adc.c: 59: CM2CON1= 0X02;
	movlw	(02h)
	movlb 2	; select bank2
	movwf	(276)^0100h	;volatile
	line	61
	
l4810:	
;adc.c: 61: for(k=0;k<2;k++)
	movlb 0	; select bank0
	clrf	(_k)
	
l4812:	
	movlw	(02h)
	subwf	(_k),w
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l4816
u3320:
	goto	l1354
	
l4814:	
	goto	l1354
	line	62
	
l1353:	
	line	63
	
l4816:	
;adc.c: 62: {
;adc.c: 63: PORTCbits.RC5=~PORTCbits.RC5;
	clrc
	btfss	(14),5	;volatile
	setc
	btfsc	status,0
	goto	u3331
	goto	u3330
	
u3331:
	movlb 0	; select bank0
	bsf	(14),5	;volatile
	goto	u3344
u3330:
	movlb 0	; select bank0
	bcf	(14),5	;volatile
u3344:
	line	64
	
l4818:	
;adc.c: 64: _delay((unsigned long)((1000)*(16000000/4000.0)));
	opt asmopt_off
movlw  21
movwf	((??_main+0)+0+2),f
movlw	75
movwf	((??_main+0)+0+1),f
	movlw	209
movwf	((??_main+0)+0),f
u3447:
	decfsz	((??_main+0)+0),f
	goto	u3447
	decfsz	((??_main+0)+0+1),f
	goto	u3447
	decfsz	((??_main+0)+0+2),f
	goto	u3447
	clrwdt
opt asmopt_on

	line	61
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_k),f
	
l4820:	
	movlw	(02h)
	subwf	(_k),w
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l4816
u3350:
	
l1354:	
	line	67
;adc.c: 65: }
;adc.c: 67: PORTCbits.RC1=1;
	bsf	(14),1	;volatile
	line	68
	
l4822:	
;adc.c: 68: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	69
	
l4824:	
;adc.c: 69: PORTCbits.RC1=0;
	movlb 0	; select bank0
	bcf	(14),1	;volatile
	line	70
;adc.c: 70: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	71
;adc.c: 71: while(PORTAbits.RA5==1)
	goto	l1355
	
l1356:	
	line	73
;adc.c: 72: {
;adc.c: 73: PORTCbits.RC5=0;
	bcf	(14),5	;volatile
	line	74
	
l1355:	
	line	71
	movlb 0	; select bank0
	btfsc	(12),5	;volatile
	goto	u3361
	goto	u3360
u3361:
	goto	l1356
u3360:
	
l1357:	
	line	75
;adc.c: 74: }
;adc.c: 75: PORTCbits.RC5=0;
	bcf	(14),5	;volatile
	line	76
	
l4826:	
;adc.c: 76: USART_SENDDATA(rfr);
	movf	(_rfr),w
	fcall	_USART_SENDDATA
	goto	l4828
	line	77
;adc.c: 77: while(1)
	
l1358:	
	line	80
	
l4828:	
;adc.c: 78: {
;adc.c: 80: if(PORTCbits.RC3 == 0)
	movlb 0	; select bank0
	btfsc	(14),3	;volatile
	goto	u3371
	goto	u3370
u3371:
	goto	l1359
u3370:
	line	82
	
l4830:	
;adc.c: 81: {
;adc.c: 82: if(CM2CON0bits.C2OUT==1)
	movlb 2	; select bank2
	btfss	(275)^0100h,6	;volatile
	goto	u3381
	goto	u3380
u3381:
	goto	l1360
u3380:
	line	84
	
l4832:	
;adc.c: 83: {
;adc.c: 84: PORTCbits.RC5=1;
	movlb 0	; select bank0
	bsf	(14),5	;volatile
	line	85
;adc.c: 85: PIR2bits.C2IF=0;
	bcf	(18),6	;volatile
	line	86
	
l4834:	
;adc.c: 86: rfr= 0X65;
	movlw	(065h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_rfr)
	line	88
;adc.c: 88: }
	goto	l1361
	line	89
	
l1360:	
	line	91
;adc.c: 89: else
;adc.c: 90: {
;adc.c: 91: PORTCbits.RC5=0;
	movlb 0	; select bank0
	bcf	(14),5	;volatile
	line	92
	
l4836:	
;adc.c: 92: rfr= 0X75;
	movlw	(075h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_rfr)
	line	93
	
l1361:	
	line	94
;adc.c: 93: }
;adc.c: 94: sd=5;
	movlw	low(05h)
	movwf	(_sd)
	movlw	high(05h)
	movwf	((_sd))+1
	line	95
;adc.c: 95: add=0X06;
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_add)
	line	96
	
l4838:	
;adc.c: 96: ADC_CONV();
	fcall	_ADC_CONV
	line	97
	
l4840:	
;adc.c: 97: if(adcrx>=11 | adcry>=26)
	movlw	high(0Bh)
	movlb 0	; select bank0
	subwf	(_adcrx+1),w
	movlw	low(0Bh)
	skipnz
	subwf	(_adcrx),w
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l4844
u3390:
	
l4842:	
	movlw	high(01Ah)
	subwf	(_adcry+1),w
	movlw	low(01Ah)
	skipnz
	subwf	(_adcry),w
	skipc
	goto	u3401
	goto	u3400
u3401:
	goto	l4870
u3400:
	goto	l4844
	
l1364:	
	line	99
	
l4844:	
;adc.c: 98: {
;adc.c: 99: ptadcrx=adcrx;
	movf	(_adcrx+1),w
	clrf	(_ptadcrx+1)
	addwf	(_ptadcrx+1)
	movf	(_adcrx),w
	clrf	(_ptadcrx)
	addwf	(_ptadcrx)

	line	100
;adc.c: 100: ptadcry=adcry;
	movf	(_adcry+1),w
	clrf	(_ptadcry+1)
	addwf	(_ptadcry+1)
	movf	(_adcry),w
	clrf	(_ptadcry)
	addwf	(_ptadcry)

	line	101
	
l4846:	
;adc.c: 101: ADC_CONV();
	fcall	_ADC_CONV
	line	102
	
l4848:	
;adc.c: 102: if(ptadcrx>adcrx)
	movlb 0	; select bank0
	movf	(_ptadcrx+1),w
	subwf	(_adcrx+1),w
	skipz
	goto	u3415
	movf	(_ptadcrx),w
	subwf	(_adcrx),w
u3415:
	skipnc
	goto	u3411
	goto	u3410
u3411:
	goto	l4852
u3410:
	line	103
	
l4850:	
;adc.c: 103: { adcrx=ptadcrx; }
	movf	(_ptadcrx+1),w
	clrf	(_adcrx+1)
	addwf	(_adcrx+1)
	movf	(_ptadcrx),w
	clrf	(_adcrx)
	addwf	(_adcrx)

	goto	l4852
	
l1365:	
	line	104
	
l4852:	
;adc.c: 104: if(ptadcry>adcry)
	movf	(_ptadcry+1),w
	subwf	(_adcry+1),w
	skipz
	goto	u3425
	movf	(_ptadcry),w
	subwf	(_adcry),w
u3425:
	skipnc
	goto	u3421
	goto	u3420
u3421:
	goto	l4856
u3420:
	line	105
	
l4854:	
;adc.c: 105: { adcry=ptadcry; }
	movf	(_ptadcry+1),w
	clrf	(_adcry+1)
	addwf	(_adcry+1)
	movf	(_ptadcry),w
	clrf	(_adcry)
	addwf	(_adcry)

	goto	l4856
	
l1366:	
	line	106
	
l4856:	
;adc.c: 106: sd=500;
	movlw	low(01F4h)
	movwf	(_sd)
	movlw	high(01F4h)
	movwf	((_sd))+1
	line	107
	
l4858:	
;adc.c: 107: x=adcrx/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_adcrx+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_adcrx),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_x)
	line	108
	
l4860:	
;adc.c: 108: y=adcry/25;
	movlw	low(019h)
	movwf	(?___lwdiv)
	movlw	high(019h)
	movwf	((?___lwdiv))+1
	movf	(_adcry+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_adcry),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_y)
	line	109
	
l4862:	
;adc.c: 109: adcrz=intdata[x]+intdata[y];
	movf	(_y),w
	addlw	_intdata&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_x),w
	addlw	_intdata&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	addwf	indf1,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_adcrz)
	line	110
	
l4864:	
;adc.c: 110: rfr=sqrt(adcrz);
	movf	(_adcrz),w
	fcall	___lbtoft
	movlb 0	; select bank0
	movf	(0+(?___lbtoft)),w
	movwf	(?_sqrt)
	movf	(1+(?___lbtoft)),w
	movwf	(?_sqrt+1)
	movf	(2+(?___lbtoft)),w
	movwf	(?_sqrt+2)
	fcall	_sqrt
	movlb 0	; select bank0
	movf	(0+(?_sqrt)),w
	movwf	(?___fttol)
	movf	(1+(?_sqrt)),w
	movwf	(?___fttol+1)
	movf	(2+(?_sqrt)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_rfr)
	line	111
	
l4866:	
;adc.c: 111: add=0X15;
	movlw	(015h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_add)
	goto	l4870
	line	112
	
l1362:	
	line	113
;adc.c: 112: }
;adc.c: 113: }
	goto	l4870
	line	114
	
l1359:	
	line	116
;adc.c: 114: else
;adc.c: 115: {
;adc.c: 116: T1CONbits.TMR1ON=0;
	bcf	(24),0	;volatile
	line	117
;adc.c: 117: PORTCbits.RC5=0;
	bcf	(14),5	;volatile
	line	118
	
l4868:	
;adc.c: 118: rfr=0X45;
	movlw	(045h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_rfr)
	line	119
;adc.c: 119: add=0X06;
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_add)
	line	120
;adc.c: 120: sd=5;
	movlw	low(05h)
	movwf	(_sd)
	movlw	high(05h)
	movwf	((_sd))+1
	goto	l4870
	line	121
	
l1367:	
	line	123
	
l4870:	
;adc.c: 121: }
;adc.c: 123: for(h=0;h<sd;h++)
	clrf	(_h)
	goto	l4876
	line	124
	
l1369:	
	line	125
	
l4872:	
;adc.c: 124: {
;adc.c: 125: USART_SENDDATA(start);
	movf	(_start),w
	fcall	_USART_SENDDATA
	line	126
;adc.c: 126: USART_SENDDATA(rfr);
	movlb 0	; select bank0
	movf	(_rfr),w
	fcall	_USART_SENDDATA
	line	127
;adc.c: 127: USART_SENDDATA(add);
	movlb 0	; select bank0
	movf	(_add),w
	fcall	_USART_SENDDATA
	line	128
;adc.c: 128: USART_SENDDATA(add+rfr);
	movlb 0	; select bank0
	movf	(_add),w
	addwf	(_rfr),w
	fcall	_USART_SENDDATA
	line	123
	
l4874:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_h),f
	goto	l4876
	
l1368:	
	
l4876:	
	movf	(_h),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	(_sd+1),w
	subwf	1+(??_main+0)+0,w
	skipz
	goto	u3435
	movf	(_sd),w
	subwf	0+(??_main+0)+0,w
u3435:
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l4872
u3430:
	goto	l4828
	
l1370:	
	goto	l4828
	line	133
	
l1371:	
	line	77
	goto	l4828
	
l1372:	
	line	135
	
l1373:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sqrt
psect	text314,local,class=CODE,delta=2
global __ptext314
__ptext314:

;; *************** function _sqrt *****************
;; Defined at:
;;		line 14 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\sqrt.c"
;; Parameters:    Size  Location     Type
;;  y               3   29[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  x               3   45[BANK0 ] unsigned int 
;;  q               3   42[BANK0 ] unsigned int 
;;  z               3   38[BANK0 ] unsigned int 
;;  og              3   35[BANK0 ] unsigned int 
;;  i               1   41[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   29[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       3       0
;;      Locals:         0      13       0
;;      Temps:          0       3       0
;;      Totals:         0      19       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftsub
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text314
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\sqrt.c"
	line	14
	global	__size_of_sqrt
	__size_of_sqrt	equ	__end_of_sqrt-_sqrt
	
_sqrt:	
	opt	stack 12
; Regs used in _sqrt: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l4738:	
	movlw	0x0
	movwf	(?___ftge)
	movlw	0x0
	movwf	(?___ftge+1)
	movlw	0x0
	movwf	(?___ftge+2)
	movlb 0	; select bank0
	movf	(sqrt@y),w
	movwf	0+(?___ftge)+03h
	movf	(sqrt@y+1),w
	movwf	1+(?___ftge)+03h
	movf	(sqrt@y+2),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3281
	goto	u3280
u3281:
	goto	l4746
u3280:
	line	20
	
l4740:	
	movlb 0	; select bank0
	movf	(sqrt@y),w
	movwf	(?___ftge)
	movf	(sqrt@y+1),w
	movwf	(?___ftge+1)
	movf	(sqrt@y+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3291
	goto	u3290
u3291:
	goto	l2628
u3290:
	line	21
	
l4742:	
	movlw	low(021h)
	movlb 0	; select bank0
	movwf	(_errno)
	movlw	high(021h)
	movwf	((_errno))+1
	
l2628:	
	line	22
	movlw	0x0
	movlb 0	; select bank0
	movwf	(?_sqrt)
	movlw	0x0
	movwf	(?_sqrt+1)
	movlw	0x0
	movwf	(?_sqrt+2)
	goto	l2629
	
l4744:	
	goto	l2629
	line	23
	
l2627:	
	line	24
	
l4746:	
	movlb 0	; select bank0
	movf	(sqrt@y),w
	movwf	(sqrt@z)
	movf	(sqrt@y+1),w
	movwf	(sqrt@z+1)
	movf	(sqrt@y+2),w
	movwf	(sqrt@z+2)
	line	30
	
l4748:	
	comf	(sqrt@y),w
	movwf	(??_sqrt+0)+0
	comf	(sqrt@y+1),w
	movwf	((??_sqrt+0)+0+1)
	comf	(sqrt@y+2),w
	movwf	((??_sqrt+0)+0+2)
	incf	(??_sqrt+0)+0,f
	skipnz
	incf	((??_sqrt+0)+0+1),f
	skipnz
	incf	((??_sqrt+0)+0+2),f
	movlw	0C8h
	addwf	(0+(??_sqrt+0)+0),w
	movwf	(sqrt@x)
	movlw	06Eh
	addwfc	(1+(??_sqrt+0)+0),w
	movwf	1+(sqrt@x)
	movlw	0BEh
	addwfc	(2+(??_sqrt+0)+0),w
	movwf	2+(sqrt@x)
	line	31
	
l4750:	
	movlw	01h
u3305:
	lsrf	(sqrt@x+2),f
	rrf	(sqrt@x+1),f
	rrf	(sqrt@x),f
	decfsz	wreg,f
	goto	u3305

	line	32
	movlw	0
	movwf	((??_sqrt+0)+0)
	movlw	080h
	movwf	((??_sqrt+0)+0+1)
	movlw	0
	movwf	((??_sqrt+0)+0+2)
	movf	0+(??_sqrt+0)+0,w
	subwf	(sqrt@z),f
	movf	1+(??_sqrt+0)+0,w
	subwfb	(sqrt@z+1),f
	movf	2+(??_sqrt+0)+0,w
	subwfb	(sqrt@z+2),f
	line	34
	movlw	(04h)
	movwf	(??_sqrt+0)+0
	movf	(??_sqrt+0)+0,w
	movwf	(sqrt@i)
	line	35
	
l2630:	
	line	36
	movf	(sqrt@x),w
	movwf	(sqrt@og)
	movf	(sqrt@x+1),w
	movwf	(sqrt@og+1)
	movf	(sqrt@x+2),w
	movwf	(sqrt@og+2)
	line	37
	
l4752:	
	movf	(sqrt@z),w
	movwf	(?___ftmul)
	movf	(sqrt@z+1),w
	movwf	(?___ftmul+1)
	movf	(sqrt@z+2),w
	movwf	(?___ftmul+2)
	movf	(sqrt@x),w
	movwf	0+(?___ftmul)+03h
	movf	(sqrt@x+1),w
	movwf	1+(?___ftmul)+03h
	movf	(sqrt@x+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movlb 0	; select bank0
	movf	(0+(?___ftmul)),w
	movwf	(sqrt@q)
	movf	(1+(?___ftmul)),w
	movwf	(sqrt@q+1)
	movf	(2+(?___ftmul)),w
	movwf	(sqrt@q+2)
	line	38
	
l4754:	
	movf	(sqrt@x),w
	movwf	(?___ftmul)
	movf	(sqrt@x+1),w
	movwf	(?___ftmul+1)
	movf	(sqrt@x+2),w
	movwf	(?___ftmul+2)
	movf	(sqrt@q),w
	movwf	0+(?___ftmul)+03h
	movf	(sqrt@q+1),w
	movwf	1+(?___ftmul)+03h
	movf	(sqrt@q+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movlb 0	; select bank0
	movf	(0+(?___ftmul)),w
	movwf	(sqrt@q)
	movf	(1+(?___ftmul)),w
	movwf	(sqrt@q+1)
	movf	(2+(?___ftmul)),w
	movwf	(sqrt@q+2)
	line	39
	
l4756:	
	movf	(sqrt@x),w
	movwf	(?___ftmul)
	movf	(sqrt@x+1),w
	movwf	(?___ftmul+1)
	movf	(sqrt@x+2),w
	movwf	(?___ftmul+2)
	movf	(sqrt@q),w
	movwf	0+(?___ftmul)+03h
	movf	(sqrt@q+1),w
	movwf	1+(?___ftmul)+03h
	movf	(sqrt@q+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movlb 0	; select bank0
	movf	(0+(?___ftmul)),w
	movwf	(sqrt@q)
	movf	(1+(?___ftmul)),w
	movwf	(sqrt@q+1)
	movf	(2+(?___ftmul)),w
	movwf	(sqrt@q+2)
	line	40
	
l4758:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xc0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(sqrt@x),w
	movwf	0+(?___ftmul)+03h
	movf	(sqrt@x+1),w
	movwf	1+(?___ftmul)+03h
	movf	(sqrt@x+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movlb 0	; select bank0
	movf	(0+(?___ftmul)),w
	movwf	(sqrt@x)
	movf	(1+(?___ftmul)),w
	movwf	(sqrt@x+1)
	movf	(2+(?___ftmul)),w
	movwf	(sqrt@x+2)
	line	41
	
l4760:	
	movf	(sqrt@q),w
	movwf	(?___ftsub)
	movf	(sqrt@q+1),w
	movwf	(?___ftsub+1)
	movf	(sqrt@q+2),w
	movwf	(?___ftsub+2)
	movf	(sqrt@x),w
	movwf	0+(?___ftsub)+03h
	movf	(sqrt@x+1),w
	movwf	1+(?___ftsub)+03h
	movf	(sqrt@x+2),w
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	movlb 0	; select bank0
	movf	(0+(?___ftsub)),w
	movwf	(sqrt@x)
	movf	(1+(?___ftsub)),w
	movwf	(sqrt@x+1)
	movf	(2+(?___ftsub)),w
	movwf	(sqrt@x+2)
	line	42
	
l4762:	
	movlw	low(01h)
	subwf	(sqrt@i),f
	btfss	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l2630
u3310:
	goto	l4764
	
l2631:	
	line	43
	
l4764:	
	movf	(sqrt@y),w
	movwf	(?___ftmul)
	movf	(sqrt@y+1),w
	movwf	(?___ftmul+1)
	movf	(sqrt@y+2),w
	movwf	(?___ftmul+2)
	movf	(sqrt@x),w
	movwf	0+(?___ftmul)+03h
	movf	(sqrt@x+1),w
	movwf	1+(?___ftmul)+03h
	movf	(sqrt@x+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movlb 0	; select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_sqrt)
	movf	(1+(?___ftmul)),w
	movwf	(?_sqrt+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_sqrt+2)
	goto	l2629
	
l4766:	
	line	44
	
l2629:	
	return
	opt stack 0
GLOBAL	__end_of_sqrt
	__end_of_sqrt:
;; =============== function _sqrt ends ============

	signat	_sqrt,4219
	global	___ftsub
psect	text315,local,class=CODE,delta=2
global __ptext315
__ptext315:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   23[BANK0 ] float 
;;  f1              3   26[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       6       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text315
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 12
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l4732:	
	movlw	080h
	movlb 0	; select bank0
	xorwf	(___ftsub@f2+2),f
	line	19
	
l4734:	
	movf	(___ftsub@f1),w
	movwf	(?___ftadd)
	movf	(___ftsub@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftsub@f1+2),w
	movwf	(?___ftadd+2)
	movf	(___ftsub@f2),w
	movwf	0+(?___ftadd)+03h
	movf	(___ftsub@f2+1),w
	movwf	1+(?___ftadd)+03h
	movf	(___ftsub@f2+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movlb 0	; select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	goto	l2725
	
l4736:	
	line	20
	
l2725:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	___lbtoft
psect	text316,local,class=CODE,delta=2
global __ptext316
__ptext316:

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       3       0
;;      Locals:         1       0       0
;;      Temps:          0       4       0
;;      Totals:         1       7       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text316
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lbtoft.c"
	line	28
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:	
	opt	stack 14
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
;___lbtoft@c stored from wreg
	movwf	(___lbtoft@c)
	line	29
	
l4728:	
	movf	(___lbtoft@c),w
	movlb 0	; select bank0
	movwf	((??___lbtoft+0)+0)
	clrf	((??___lbtoft+0)+0+1)
	clrf	((??___lbtoft+0)+0+2)
	movf	0+(??___lbtoft+0)+0,w
	movwf	(?___ftpack)
	movf	1+(??___lbtoft+0)+0,w
	movwf	(?___ftpack+1)
	movf	2+(??___lbtoft+0)+0,w
	movwf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lbtoft+3)+0
	movf	(??___lbtoft+3)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movlb 0	; select bank0
	movwf	(?___lbtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lbtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lbtoft+2)
	goto	l2767
	
l4730:	
	line	30
	
l2767:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
;; =============== function ___lbtoft ends ============

	signat	___lbtoft,4219
	global	___ftmul
psect	text317,local,class=CODE,delta=2
global __ptext317
__ptext317:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   10[BANK0 ] float 
;;  f2              3   13[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   21[BANK0 ] unsigned um
;;  sign            1   25[BANK0 ] unsigned char 
;;  cntr            1   24[BANK0 ] unsigned char 
;;  exp             1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       6       0
;;      Locals:         0       6       0
;;      Temps:          0       4       0
;;      Totals:         0      16       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text317
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 13
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l4678:	
	movlb 0	; select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l4684
u3160:
	line	57
	
l4680:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2741
	
l4682:	
	goto	l2741
	
l2740:	
	line	58
	
l4684:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l4690
u3170:
	line	59
	
l4686:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2741
	
l4688:	
	goto	l2741
	
l2742:	
	line	60
	
l4690:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3185:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3180:
	decfsz	wreg,f
	goto	u3185
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3195:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3190:
	decfsz	wreg,f
	goto	u3195
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l4692:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l4694:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l4696:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l4698:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l4700:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4702
	line	70
	
l2743:	
	line	71
	
l4702:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l4706
u3200:
	line	72
	
l4704:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l4706
	
l2744:	
	line	73
	
l4706:	
	movlw	01h
u3215:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u3215

	line	74
	
l4708:	
	movlw	01h
u3225:
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	decfsz	wreg,f
	goto	u3225
	line	75
	
l4710:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l4702
u3230:
	goto	l4712
	
l2745:	
	line	76
	
l4712:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4714
	line	77
	
l2746:	
	line	78
	
l4714:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l4718
u3240:
	line	79
	
l4716:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l4718
	
l2747:	
	line	80
	
l4718:	
	movlw	01h
u3255:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u3255

	line	81
	
l4720:	
	movlw	01h
u3265:
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	decfsz	wreg,f
	goto	u3265

	line	82
	
l4722:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l4714
u3270:
	goto	l4724
	
l2748:	
	line	83
	
l4724:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movlb 0	; select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l2741
	
l4726:	
	line	84
	
l2741:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text318,local,class=CODE,delta=2
global __ptext318
__ptext318:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   10[BANK0 ] float 
;;  f2              3   13[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   22[BANK0 ] unsigned char 
;;  exp2            1   21[BANK0 ] unsigned char 
;;  sign            1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       6       0
;;      Locals:         0       3       0
;;      Temps:          0       4       0
;;      Totals:         0      13       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text318
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 12
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l4608:	
	movlb 0	; select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l4610:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2930
	goto	l4616
u2930:
	
l4612:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2941
	goto	u2940
u2941:
	goto	l4620
u2940:
	
l4614:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l4620
u2950:
	goto	l4616
	
l2688:	
	line	93
	
l4616:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2689
	
l4618:	
	goto	l2689
	
l2686:	
	line	94
	
l4620:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2960
	goto	l2692
u2960:
	
l4622:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2971
	goto	u2970
u2971:
	goto	l4626
u2970:
	
l4624:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2981
	goto	u2980
u2981:
	goto	l4626
u2980:
	
l2692:	
	line	95
	goto	l2689
	
l2690:	
	line	96
	
l4626:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l4628:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l2693
u2990:
	line	98
	
l4630:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2693:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l2694
u3000:
	line	100
	
l4632:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2694:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l4634:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l4636:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3011
	goto	u3010
u3011:
	goto	l4648
u3010:
	goto	l4638
	line	109
	
l2696:	
	line	110
	
l4638:	
	movlw	01h
u3025:
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	decfsz	wreg,f
	goto	u3025
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l4640:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3031
	goto	u3030
u3031:
	goto	l4646
u3030:
	
l4642:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l4638
u3040:
	goto	l4646
	
l2698:	
	goto	l4646
	
l2699:	
	line	113
	goto	l4646
	
l2701:	
	line	114
	
l4644:	
	movlw	01h
u3055:
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	decfsz	wreg,f
	goto	u3055

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l4646
	line	116
	
l2700:	
	line	113
	
l4646:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l4644
u3060:
	goto	l2703
	
l2702:	
	line	117
	goto	l2703
	
l2695:	
	
l4648:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3071
	goto	u3070
u3071:
	goto	l2703
u3070:
	goto	l4650
	line	120
	
l2705:	
	line	121
	
l4650:	
	movlw	01h
u3085:
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	decfsz	wreg,f
	goto	u3085
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l4652:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3091
	goto	u3090
u3091:
	goto	l4658
u3090:
	
l4654:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l4650
u3100:
	goto	l4658
	
l2707:	
	goto	l4658
	
l2708:	
	line	124
	goto	l4658
	
l2710:	
	line	125
	
l4656:	
	movlw	01h
u3115:
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	decfsz	wreg,f
	goto	u3115

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l4658
	line	127
	
l2709:	
	line	124
	
l4658:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l4656
u3120:
	goto	l2703
	
l2711:	
	goto	l2703
	line	128
	
l2704:	
	line	129
	
l2703:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l4662
u3130:
	line	131
	
l4660:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l4662
	line	133
	
l2712:	
	line	134
	
l4662:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l4666
u3140:
	line	136
	
l4664:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l4666
	line	138
	
l2713:	
	line	139
	
l4666:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l4668:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l4674
u3150:
	line	142
	
l4670:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l4672:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l4674
	line	145
	
l2714:	
	line	146
	
l4674:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movlb 0	; select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l2689
	
l4676:	
	line	148
	
l2689:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_ADC_CONV
psect	text319,local,class=CODE,delta=2
global __ptext319
__ptext319:

;; *************** function _ADC_CONV *****************
;; Defined at:
;;		line 155 in file "D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          4       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text319
	file	"D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	line	155
	global	__size_of_ADC_CONV
	__size_of_ADC_CONV	equ	__end_of_ADC_CONV-_ADC_CONV
	
_ADC_CONV:	
	opt	stack 14
; Regs used in _ADC_CONV: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	158
	
l4568:	
;adc.c: 158: ADCON0bits.CHS = 2;
	movlb 1	; select bank1
	movf	(157)^080h,w	;volatile
	andlw	not (((1<<5)-1)<<2)
	iorlw	(02h & ((1<<5)-1))<<2
	movwf	(157)^080h	;volatile
	line	159
	
l4570:	
;adc.c: 159: ADCON0bits.ADON= 1;
	bsf	(157)^080h,0	;volatile
	line	160
	
l4572:	
;adc.c: 160: PIR1bits.ADIF= 0;
	movlb 0	; select bank0
	bcf	(17),6	;volatile
	line	161
	
l4574:	
;adc.c: 161: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	162
	
l4576:	
;adc.c: 162: ADCON0bits.GO = 1;
	movlb 1	; select bank1
	bsf	(157)^080h,1	;volatile
	line	163
;adc.c: 163: while(ADCON0bits.GO == 1);
	goto	l1388
	
l1389:	
	
l1388:	
	btfsc	(157)^080h,1	;volatile
	goto	u2891
	goto	u2890
u2891:
	goto	l1388
u2890:
	goto	l4578
	
l1390:	
	line	164
	
l4578:	
;adc.c: 164: adcrx= (ADRESH<<8)+ADRESL;
	movf	(155)^080h,w	;volatile
	movwf	(??_ADC_CONV+0)+0
	clrf	(??_ADC_CONV+0)+0+1
	movf	(156)^080h,w	;volatile
	movwf	(??_ADC_CONV+2)+0
	clrf	(??_ADC_CONV+2)+0+1
	movf	(??_ADC_CONV+2)+0,w
	movwf	(??_ADC_CONV+2)+1
	clrf	(??_ADC_CONV+2)+0
	movf	0+(??_ADC_CONV+0)+0,w
	addwf	0+(??_ADC_CONV+2)+0,w
	movlb 0	; select bank0
	movwf	(_adcrx)
	movf	1+(??_ADC_CONV+0)+0,w
	addwfc	1+(??_ADC_CONV+2)+0,w
	movwf	1+(_adcrx)
	line	165
	
l4580:	
;adc.c: 165: PIR1bits.ADIF= 0;
	bcf	(17),6	;volatile
	line	168
	
l4582:	
;adc.c: 168: ADCON0bits.CHS = 3;
	movlb 1	; select bank1
	movf	(157)^080h,w	;volatile
	andlw	not (((1<<5)-1)<<2)
	iorlw	(03h & ((1<<5)-1))<<2
	movwf	(157)^080h	;volatile
	line	169
	
l4584:	
;adc.c: 169: ADCON0bits.ADON= 1;
	bsf	(157)^080h,0	;volatile
	line	170
	
l4586:	
;adc.c: 170: PIR1bits.ADIF= 0;
	movlb 0	; select bank0
	bcf	(17),6	;volatile
	line	171
	
l4588:	
;adc.c: 171: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	172
	
l4590:	
;adc.c: 172: ADCON0bits.GO = 1;
	movlb 1	; select bank1
	bsf	(157)^080h,1	;volatile
	line	173
;adc.c: 173: while(ADCON0bits.GO == 1);
	goto	l1391
	
l1392:	
	
l1391:	
	btfsc	(157)^080h,1	;volatile
	goto	u2901
	goto	u2900
u2901:
	goto	l1391
u2900:
	goto	l4592
	
l1393:	
	line	174
	
l4592:	
;adc.c: 174: adcry= (ADRESH<<8)+ADRESL;
	movf	(155)^080h,w	;volatile
	movwf	(??_ADC_CONV+0)+0
	clrf	(??_ADC_CONV+0)+0+1
	movf	(156)^080h,w	;volatile
	movwf	(??_ADC_CONV+2)+0
	clrf	(??_ADC_CONV+2)+0+1
	movf	(??_ADC_CONV+2)+0,w
	movwf	(??_ADC_CONV+2)+1
	clrf	(??_ADC_CONV+2)+0
	movf	0+(??_ADC_CONV+0)+0,w
	addwf	0+(??_ADC_CONV+2)+0,w
	movlb 0	; select bank0
	movwf	(_adcry)
	movf	1+(??_ADC_CONV+0)+0,w
	addwfc	1+(??_ADC_CONV+2)+0,w
	movwf	1+(_adcry)
	line	175
	
l4594:	
;adc.c: 175: PIR1bits.ADIF= 0;
	bcf	(17),6	;volatile
	line	177
	
l4596:	
;adc.c: 177: if(adcrx >= 0x1FF )
	movlw	high(01FFh)
	subwf	(_adcrx+1),w
	movlw	low(01FFh)
	skipnz
	subwf	(_adcrx),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l4600
u2910:
	line	179
	
l4598:	
;adc.c: 178: {
;adc.c: 179: adcrx= adcrx - 0x1FF;
	movf	(_adcrx),w
	addlw	low(0FE01h)
	movwf	(_adcrx)
	movlw	high(0FE01h)
	addwfc	(_adcrx+1),w
	movwf	1+(_adcrx)
	line	180
;adc.c: 180: }
	goto	l4602
	line	181
	
l1394:	
	line	183
	
l4600:	
;adc.c: 181: else
;adc.c: 182: {
;adc.c: 183: adcrx= 0x1FF - adcrx ;
	comf	(_adcrx),w
	movwf	(??_ADC_CONV+0)+0
	comf	(_adcrx+1),w
	movwf	((??_ADC_CONV+0)+0+1)
	incf	(??_ADC_CONV+0)+0,f
	skipnz
	incf	((??_ADC_CONV+0)+0+1),f
	movf	0+(??_ADC_CONV+0)+0,w
	addlw	low(01FFh)
	movwf	(_adcrx)
	movlw	high(01FFh)
	addwfc	1+(??_ADC_CONV+0)+0,w
	movwf	1+(_adcrx)
	goto	l4602
	line	184
	
l1395:	
	line	185
	
l4602:	
;adc.c: 184: }
;adc.c: 185: if(adcry >= 0x1FF )
	movlw	high(01FFh)
	subwf	(_adcry+1),w
	movlw	low(01FFh)
	skipnz
	subwf	(_adcry),w
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l4606
u2920:
	line	187
	
l4604:	
;adc.c: 186: {
;adc.c: 187: adcry= adcry - 0x1FF;
	movf	(_adcry),w
	addlw	low(0FE01h)
	movwf	(_adcry)
	movlw	high(0FE01h)
	addwfc	(_adcry+1),w
	movwf	1+(_adcry)
	line	188
;adc.c: 188: }
	goto	l1398
	line	189
	
l1396:	
	line	191
	
l4606:	
;adc.c: 189: else
;adc.c: 190: {
;adc.c: 191: adcry= 0x1FF - adcry ;
	comf	(_adcry),w
	movwf	(??_ADC_CONV+0)+0
	comf	(_adcry+1),w
	movwf	((??_ADC_CONV+0)+0+1)
	incf	(??_ADC_CONV+0)+0,f
	skipnz
	incf	((??_ADC_CONV+0)+0+1),f
	movf	0+(??_ADC_CONV+0)+0,w
	addlw	low(01FFh)
	movwf	(_adcry)
	movlw	high(01FFh)
	addwfc	1+(??_ADC_CONV+0)+0,w
	movwf	1+(_adcry)
	goto	l1398
	line	192
	
l1397:	
	line	195
	
l1398:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_CONV
	__end_of_ADC_CONV:
;; =============== function _ADC_CONV ends ============

	signat	_ADC_CONV,88
	global	___ftge
psect	text320,local,class=CODE,delta=2
global __ptext320
__ptext320:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         6       0       0
;;      Locals:         0       0       0
;;      Temps:          3       0       0
;;      Totals:         9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text320
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 14
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l4502:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l4506
u2800:
	line	7
	
l4504:	
	comf	(___ftge@ff1),w
	movwf	(??___ftge+0)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+0)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+0)+0+2)
	incf	(??___ftge+0)+0,f
	skipnz
	incf	((??___ftge+0)+0+1),f
	skipnz
	incf	((??___ftge+0)+0+2),f
	movlw	0
	addwf	(0+(??___ftge+0)+0),w
	movwf	(___ftge@ff1)
	movlw	0
	addwfc	(1+(??___ftge+0)+0),w
	movwf	1+(___ftge@ff1)
	movlw	080h
	addwfc	(2+(??___ftge+0)+0),w
	movwf	2+(___ftge@ff1)
	goto	l4506
	
l2809:	
	line	8
	
l4506:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l4510
u2810:
	line	9
	
l4508:	
	comf	(___ftge@ff2),w
	movwf	(??___ftge+0)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+0)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+0)+0+2)
	incf	(??___ftge+0)+0,f
	skipnz
	incf	((??___ftge+0)+0+1),f
	skipnz
	incf	((??___ftge+0)+0+2),f
	movlw	0
	addwf	(0+(??___ftge+0)+0),w
	movwf	(___ftge@ff2)
	movlw	0
	addwfc	(1+(??___ftge+0)+0),w
	movwf	1+(___ftge@ff2)
	movlw	080h
	addwfc	(2+(??___ftge+0)+0),w
	movwf	2+(___ftge@ff2)
	goto	l4510
	
l2810:	
	line	10
	
l4510:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l4512:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l4514:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2825
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2825
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2825:
	skipnc
	goto	u2821
	goto	u2820
u2821:
	goto	l4518
u2820:
	
l4516:	
	clrc
	
	goto	l2811
	
l4326:	
	
l4518:	
	setc
	
	goto	l2811
	
l4328:	
	goto	l2811
	
l4520:	
	line	13
	
l2811:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___fttol
psect	text321,local,class=CODE,delta=2
global __ptext321
__ptext321:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    9[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    5[BANK0 ] unsigned long 
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    9[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         0       6       0
;;      Temps:          0       4       0
;;      Totals:         4      10       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text321
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 15
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l4438:	
	movf	(___fttol@f1),w
	movlb 0	; select bank0
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l4444
u2680:
	line	50
	
l4440:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2752
	
l4442:	
	goto	l2752
	
l2751:	
	line	51
	
l4444:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2695:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2690:
	decfsz	wreg,f
	goto	u2695
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4446:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4448:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4450:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4452:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l4454:	
	btfss	(___fttol@exp1),7
	goto	u2701
	goto	u2700
u2701:
	goto	l4464
u2700:
	line	57
	
l4456:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l4462
u2710:
	line	58
	
l4458:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2752
	
l4460:	
	goto	l2752
	
l2754:	
	goto	l4462
	line	59
	
l2755:	
	line	60
	
l4462:	
	movlw	01h
u2725:
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	decfsz	wreg,f
	goto	u2725

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l4462
u2730:
	goto	l4474
	
l2756:	
	line	62
	goto	l4474
	
l2753:	
	line	63
	
l4464:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l4472
u2740:
	line	64
	
l4466:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2752
	
l4468:	
	goto	l2752
	
l2758:	
	line	65
	goto	l4472
	
l2760:	
	line	66
	
l4470:	
	movlw	01h
u2755:
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	wreg,f
	goto	u2755
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l4472
	line	68
	
l2759:	
	line	65
	
l4472:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l4470
u2760:
	goto	l4474
	
l2761:	
	goto	l4474
	line	69
	
l2757:	
	line	70
	
l4474:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2770
	goto	l4478
u2770:
	line	71
	
l4476:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l4478
	
l2762:	
	line	72
	
l4478:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l2752
	
l4480:	
	line	73
	
l2752:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text322,local,class=CODE,delta=2
global __ptext322
__ptext322:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         5       0       0
;;      Locals:         0       0       0
;;      Temps:          3       0       0
;;      Totals:         8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___lbtoft
;;		___ftdiv
;;		___abtoft
;;		___awtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text322
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 12
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l4370:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2490
	goto	l4374
u2490:
	
l4372:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l4380
u2500:
	goto	l4374
	
l2976:	
	line	65
	
l4374:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l2977
	
l4376:	
	goto	l2977
	
l2974:	
	line	66
	goto	l4380
	
l2979:	
	line	67
	
l4378:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2515:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u2515

	goto	l4380
	line	69
	
l2978:	
	line	66
	
l4380:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l4378
u2520:
	goto	l2981
	
l2980:	
	line	70
	goto	l2981
	
l2982:	
	line	71
	
l4382:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l4384:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l4386:	
	movlw	01h
u2535:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u2535

	line	74
	
l2981:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l4382
u2540:
	goto	l4390
	
l2983:	
	line	75
	goto	l4390
	
l2985:	
	line	76
	
l4388:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2555:
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	decfsz	wreg,f
	goto	u2555
	goto	l4390
	line	78
	
l2984:	
	line	75
	
l4390:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l4388
u2560:
	
l2986:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l2987
u2570:
	line	80
	
l4392:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l2987:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l4394:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2585:
	lslf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2580:
	decfsz	wreg,f
	goto	u2585
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l4396:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2590
	goto	l2988
u2590:
	line	84
	
l4398:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2988:	
	line	85
	line	86
	
l2977:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwdiv
psect	text323,local,class=CODE,delta=2
global __ptext323
__ptext323:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         3       0       0
;;      Temps:          1       0       0
;;      Totals:         8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text323
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 15
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4344:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4346:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2421
	goto	u2420
u2421:
	goto	l4366
u2420:
	line	11
	
l4348:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l4354
	
l2650:	
	line	13
	
l4350:	
	movlw	01h
	
u2435:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u2435
	line	14
	
l4352:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l4354
	line	15
	
l2649:	
	line	12
	
l4354:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l4350
u2440:
	goto	l4356
	
l2651:	
	goto	l4356
	line	16
	
l2652:	
	line	17
	
l4356:	
	movlw	01h
	
u2455:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u2455
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2465
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2465:
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l4362
u2460:
	line	19
	
l4358:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	20
	
l4360:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l4362
	line	21
	
l2653:	
	line	22
	
l4362:	
	movlw	01h
	
u2475:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u2475
	line	23
	
l4364:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l4356
u2480:
	goto	l4366
	
l2654:	
	goto	l4366
	line	24
	
l2648:	
	line	25
	
l4366:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l2655
	
l4368:	
	line	26
	
l2655:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_USART_SENDDATA
psect	text324,local,class=CODE,delta=2
global __ptext324
__ptext324:

;; *************** function _USART_SENDDATA *****************
;; Defined at:
;;		line 138 in file "D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
;; Parameters:    Size  Location     Type
;;  udata           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  udata           1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_txdata
;; This function uses a non-reentrant model
;;
psect	text324
	file	"D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	line	138
	global	__size_of_USART_SENDDATA
	__size_of_USART_SENDDATA	equ	__end_of_USART_SENDDATA-_USART_SENDDATA
	
_USART_SENDDATA:	
	opt	stack 15
; Regs used in _USART_SENDDATA: [wreg]
;USART_SENDDATA@udata stored from wreg
	movwf	(USART_SENDDATA@udata)
	line	139
	
l4334:	
;adc.c: 139: TXREG= udata;
	movf	(USART_SENDDATA@udata),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	140
;adc.c: 140: while(PIR1bits.TXIF==0);
	goto	l1376
	
l1377:	
	
l1376:	
	movlb 0	; select bank0
	btfss	(17),4	;volatile
	goto	u2401
	goto	u2400
u2401:
	goto	l1376
u2400:
	
l1378:	
	line	141
;adc.c: 141: PIR1bits.TXIF=0;
	bcf	(17),4	;volatile
	line	142
	
l1379:	
	return
	opt stack 0
GLOBAL	__end_of_USART_SENDDATA
	__end_of_USART_SENDDATA:
;; =============== function _USART_SENDDATA ends ============

	signat	_USART_SENDDATA,4216
	global	_delay
psect	text325,local,class=CODE,delta=2
global __ptext325
__ptext325:

;; *************** function _delay *****************
;; Defined at:
;;		line 198 in file "D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
;; Parameters:    Size  Location     Type
;;  d               2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_ADC_CONV
;; This function uses a non-reentrant model
;;
psect	text325
	file	"D:\DVA\projects\Intelligent helmet for accident detection\programs\import\topv3\adc.c"
	line	198
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 14
; Regs used in _delay: [wreg+status,2]
	line	200
	
l4330:	
;adc.c: 199: unsigned int i;
;adc.c: 200: for(i=0; i<=d; i++);
	clrf	(delay@i)
	clrf	(delay@i+1)
	goto	l1401
	
l1402:	
	
l4332:	
	movlw	low(01h)
	addwf	(delay@i),f
	movlw	high(01h)
	addwfc	(delay@i+1),f
	
l1401:	
	movf	(delay@i+1),w
	subwf	(delay@d+1),w
	skipz
	goto	u2395
	movf	(delay@i),w
	subwf	(delay@d),w
u2395:
	skipnc
	goto	u2391
	goto	u2390
u2391:
	goto	l4332
u2390:
	goto	l1404
	
l1403:	
	line	201
	
l1404:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text326,local,class=CODE,delta=2
global __ptext326
__ptext326:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
