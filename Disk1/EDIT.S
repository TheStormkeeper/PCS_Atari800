 LST OFF
*
 ORG $A000
 OBJ $8500
*
* CONSTANTS
*
POLYGON EQU 1
BPOLYGON EQU 2
LIBOBJ EQU 3
*
* TEMPS
*
PARAM EQU $C0
TEMP EQU PARAM+7
XTEMP EQU TEMP+1
YTEMP EQU XTEMP+1
TEMP2 EQU YTEMP+1
*
* DRAWBITS
*
B1 EQU $D0
B2 EQU B1+2
*
* MAIN PROGRAM
*
C EQU $80
CY EQU C+2
CXD8 EQU CY+1
CXM8 EQU CXD8+1
LASTITEM EQU CXM8+8
*
* OBJECTS
*
OBJ EQU LASTITEM+2
NEXTOBJ EQU OBJ+2
OBJCOUNT EQU NEXTOBJ+1
PLYPTRX EQU OBJCOUNT+1
PLYPTRY EQU PLYPTRX+2
OBJID EQU PLYPTRY+2
FILLCOLOR EQU OBJID+1
VRTXCOUNT EQU FILLCOLOR+1
LB EQU VRTXCOUNT+1
SCANMODE EQU LB+2
MEMBTM EQU SCANMODE+1
MIDBTM EQU MEMBTM+2
MIDTOP EQU MIDBTM+2
MIDY EQU MIDTOP+2
COLOR EQU MIDY+1
*
* EDITOR
*
CX EQU COLOR+1
EDITMODE EQU CX+1
OBJ2 EQU EDITMODE+1
MAXX EQU OBJ2+2
MAXY EQU MAXX+1
MINX EQU MAXY+1
MINY EQU MINX+1
LFTSTOP EQU MINY+1
RTSTOP EQU LFTSTOP+1
TOPSTOP EQU RTSTOP+1
BTMSTOP EQU TOPSTOP+1
DELX EQU BTMSTOP+1
DELY EQU DELX+1
DRAGX EQU DELY+1
DRAGY EQU DRAGX+1
MINPT EQU MINY+1
MINDIST EQU MINPT+1
MINPOLY EQU MINDIST+1
*
* MAGNIFIER, WORLD
*
VERTA EQU B2+2
D8A EQU VERTA+1
M8A EQU D8A+1
VERTB EQU M8A+1
D8B EQU VERTB+1
M8B EQU D8B+1
BYTE2 EQU M8B+1
DRCNT EQU BYTE2+1
BITS EQU DRCNT+1
*
COLBW EQU $F0
GRIDON EQU COLBW+1
MCOLOR EQU GRIDON+1
XDIR EQU MCOLOR+1
YDIR EQU XDIR+1
VR EQU YDIR+1
VRY EQU VR
VRXD8 EQU VRY+1
VRXM8 EQU VRXD8+1
* NEXT EQU VR+6
*
SLB EQU $F0
SLOLD EQU SLB+2
SLNEW EQU SLOLD+1
*
* PBDB
*
LOGIC EQU $4B00
WSET EQU $4B18
PBDATA EQU $4B1C
OBJDX EQU PBDATA+1
PBDX EQU $7A40
*
* EXTERNALS
*
D8 EQU $2100
M8 EQU D8+$100
LO EQU M8+$100
HI EQU LO+$C0
SETMODE EQU HI+$10F
DRAWB EQU SETMODE+$25
XOFFDRAW EQU DRAWB+$41
MASKS EQU XOFFDRAW+$9C
HLINE EQU MASKS+$11
VLINE EQU HLINE+$20
FRAMER EQU VLINE+$58
DRAWR EQU FRAMER+$28
INR EQU DRAWR+$10
GETB EQU INR+$2D
INITC EQU GETB+$B
XDRAWC EQU INITC+$14
UPDATEC EQU XDRAWC+$7
DOCX EQU UPDATEC+$1E
GETCX EQU DOCX+$17
DOCY EQU GETCX+$10
WAIT EQU DOCY+$3
CINR EQU WAIT+$C
DOMENU EQU CINR+$13
SELECT EQU DOMENU+$54
INIT EQU SELECT+$40
MOVEUP EQU INIT+$35
MOVEDOWN EQU MOVEUP+$3B
ADDIYX EQU MOVEDOWN+$39
ADDYX EQU ADDIYX+$E
SUBIYX EQU ADDYX+$10
SUBYX EQU SUBIYX+$12
CMPYX EQU SUBYX+$10
CHARTO EQU CMPYX+$F
PRCHAR EQU CHARTO+$A
PRINT EQU PRCHAR+$38
*
* PPAK
*
DRAWDISPLAY EQU $9920
GETOBJ EQU DRAWDISPLAY+$3E
GETNEXTOBJ EQU GETOBJ+$C
GETINFO EQU GETNEXTOBJ+$1B
DRAWOBJ EQU GETINFO+$3E
SCANPOLY EQU DRAWOBJ+$14
ALIGNPOLY EQU SCANPOLY+$433
GETSCAN EQU ALIGNPOLY+$39
MAKEHOLE EQU GETSCAN+$57
SELECTPOLY EQU MAKEHOLE+$4A
POLYPOINTS EQU SELECTPOLY+$33
REMOVEPOLY EQU POLYPOINTS+$37
GETBOUNDS EQU REMOVEPOLY+$6E
*
* RUNTIME
*
PLAYSTART EQU $9355
POLY EQU PLAYSTART+$175
LAUNCHER EQU POLY+$B
LEFTFLIPPER EQU LAUNCHER+$1B
RIGHTFLIPPER EQU LEFTFLIPPER+$1B
BALL EQU RIGHTFLIPPER+$1B
BMP1 EQU BALL+$1B
BMP2 EQU BMP1+$23
BMP3 EQU BMP2+$23
BMP4 EQU BMP3+$1B
BMP5 EQU BMP4+$1B
BMP6 EQU BMP5+$1B
LKICK EQU BMP6+$1B
RKICK EQU LKICK+$1D
KICK1 EQU RKICK+$1D
KICK2 EQU KICK1+$1B
ROLL1 EQU KICK2+$1B
ROLL2 EQU ROLL1+$1B
ROLL3 EQU ROLL2+$1B
TARG1 EQU ROLL3+$1B
TARG2 EQU TARG1+$1B
TARG3 EQU TARG2+$1B
TARG4 EQU TARG3+$1B
TARG5 EQU TARG4+$1B
TARG6 EQU TARG5+$1B
LFLIP2 EQU TARG6+$1B
RFLIP2 EQU LFLIP2+$1B
POLY1 EQU RFLIP2+$1B
POLY2 EQU POLY1+$B
POLY3 EQU POLY2+$B
POLY4 EQU POLY3+$B
LANE1 EQU POLY4+$B
LANE2 EQU LANE1+$1B
LANE3 EQU LANE2+$1B
GATE1 EQU LANE3+$1B
GATE2 EQU GATE1+$1B
GATE3 EQU GATE2+$1B
GATE4 EQU GATE3+$1B
DROP1 EQU GATE4+$1B
DROP2 EQU DROP1+$1C
CATCH1 EQU DROP2+$1C
CATCH2 EQU CATCH1+$1D
SPIN EQU CATCH2+$1B
MGNT EQU SPIN+$1B
*
SWAPWIRE EQU $4A00
SWAPDISK EQU $4A08
*
START JSR INIT
 LDA #0
 STA CY
 STA CXD8
 STA CXM8
 STA SCANMODE
 JSR DRAWDISPLAY
 JSR SAVELOGO
*
DRAWKIT JSR CLEARKIT
 LDA #$FF
 STA COLOR
 LDY #0
 STY EDITMODE
*
SETUP STY YTEMP
 LDA ICONS,Y
 LDX ICONS+1,Y
 JSR XOFFDRAW
 LDY YTEMP
 INY
 INY
 CPY #104
 BNE SETUP
*
 LDA #$80
 STA SCANMODE
 LDY #0
SETUP2 STY NEXTOBJ
 LDA POLYS,Y
 STA OBJ
 LDA POLYS+1,Y
 STA OBJ+1
 JSR GETINFO
 JSR DRAWOBJ
 LDY NEXTOBJ
 INY
 INY
 CPY #8
 BNE SETUP2
*
 LDA #<HAND
 LDX #>HAND
 JSR INITC
*
MAIN JSR UPDATEC
 JSR GETB
 BPL MAIN
*
 LDA #<TABLEB
 LDX #>TABLEB
 JSR CINR
 BCC MAIN2
 JSR MODE0
 JMP MAIN
*
MODE0 LDA EDITMODE
 BNE MODE80
 JMP DRAGOBJ
MODE80 CMP #$80
 BNE MODE81
 JMP DRAGPOINT
MODE81 CMP #$81
 BNE MODE82
 JMP CUTPOINT
MODE82 CMP #$82
 BNE MODE4
 JMP PASTEPOINT
MODE4 JMP PAINTOBJ
*
MAIN2 LDA #<TOOLB
 LDX #>TOOLB
 JSR CINR
 BCC MAIN3
 LDA #0
 STA LASTITEM+1
 JMP DOCMD
*
MAIN3 LDA EDITMODE
 BNE MAIN6
 LDY #0
MAIN4 LDA BOXLO,Y
 LDX BOXHI,Y
 STY YTEMP
 JSR CINR
 LDY YTEMP
 BCC MAIN5
 LDA OBJADDRHI,Y
 STA TEMP
 LDA OBJLEN,Y
 LDX OBJADDRLO,Y
 LDY TEMP
 JSR ADDOBJ
 JMP MAIN
*
MAIN5 INY
 CPY #43
 BCC MAIN4
MAIN6 JMP MAIN
*
DOCMD LDA #<CMDMENU
 LDX #>CMDMENU
 JSR DOMENU
MAIN8 JMP MAIN
*
HAND DA *+7
 HEX 0222040C02
 HEX C000600030001860
 HEX 2CC03EC07FC07FC0
 HEX 3FA01F600EC00180
*
POINTER DA *+7
 HEX 1122060701
 HEX F8F0F0F89C0E06
*
SCISSOR DA *+7
 HEX 1B22050B02
 HEX 08008C00CC006C0034001800
 HEX 0D8032404A4049803000
*
HAMMER DA *+7
 HEX 2922050B02
 HEX DE00DB000100180018001800
 HEX 18001800180018001800
*
BRUSH DA *+7
 HEX 3722060801
 HEX FC3E1E000C0C0C0C
*
INITHAND JSR POINTSOFF
 LDA #<HAND
 LDX #>HAND
 LDY #0
SETEDMODE STY EDITMODE
 JMP INITC
*
INITPOINTER JSR POINTSON
 LDA #<POINTER
 LDX #>POINTER
 LDY #$80
 BNE SETEDMODE
*
INITSCISSOR JSR POINTSON
 LDA #<SCISSOR
 LDX #>SCISSOR
 LDY #$81
 BNE SETEDMODE
*
INITHAMMER JSR POINTSON
 LDA #<HAMMER
 LDX #>HAMMER
 LDY #$82
 BNE SETEDMODE
*
INITBRUSH JSR POINTSOFF
 LDA #<BRUSH
 LDX #>BRUSH
 LDY #1
 BNE SETEDMODE
*
POINTSON BIT EDITMODE
 BMI POINTS3
 BPL POINTS2
POINTSOFF BIT EDITMODE
 BPL *+5
POINTS2 JSR DRAWPOINTS
POINTS3 JMP XDRAWC
*
DRAWLOGO LDA #<LOGO
 LDX #>LOGO
 JMP DRAWB
*
SAVELOGO LDY #1
 JSR SETMODE
 LDA #<LOGO
 LDX #>LOGO
 JMP DRAWB
*
LOGO DA $B900
 HEX 0014004014
*
WHITE LDY #$FF
SETCLR STY COLOR
 RTS
*
GREEN LDY #$55
 BNE SETCLR
*
VIOLET LDY #$AA
 BNE SETCLR
*
CLEARKIT LDY #3
 JSR SETMODE
 LDA #<KITB
 LDX #>KITB
 JSR DRAWR
 LDY #2
 JMP SETMODE
*
PLAY JSR POINTSOFF
 JSR CLEARKIT
 JSR DRAWLOGO
 JSR PLAYSTART
REEDIT JSR SAVELOGO
 JMP DRAWKIT
*
MAGPAINT JSR POINTSOFF
 JSR CLEARKIT
 JSR DRAWLOGO
 JSR MAGSTART
 JMP REEDIT
*
SETWORLD JSR POINTSOFF
 JSR CLEARKIT
 JSR WORLDSTART
 JMP DRAWKIT
*
WIREKIT JSR POINTSOFF
 JSR CLEARKIT
 JSR SWAPWIRE
 JMP DRAWKIT
*
DISKIO JSR POINTSOFF
 JSR CLEARKIT
 JSR DRAWLOGO
 JSR SWAPDISK
 JMP REEDIT
*
DRAGOBJ JSR SELECTPOLY
 BCS DRAGO2
 RTS
*
DRAGO2 LDX #$80
 STX SCANMODE ;NO MERGE
 TAY
 JSR GETOBJ
*
DRAGO4 JSR REMOVEPOLY
*
DRAGOBJ2 JSR XDRAWC
 JSR GETBOUNDS
 LDX PARAM+3
 LDA D8,X
 STA CXD8
 LDA M8,X
 STA CXM8
 JSR XDRAWC
*
 LDY #0
 STY RTSTOP
 STY BTMSTOP
 LDA #$FF
 STA LFTSTOP
 STA TOPSTOP
DRAGO5 LDA (PLYPTRX),Y
 CMP LFTSTOP
 BCS *+4
 STA LFTSTOP
 CMP RTSTOP
 BCC *+4
 STA RTSTOP
 LDA (PLYPTRY),Y
 CMP TOPSTOP
 BCS *+4
 STA TOPSTOP
 CMP BTMSTOP
 BCC *+4
 STA BTMSTOP
 INY
 CPY VRTXCOUNT
 BNE DRAGO5
*
 JSR GETCX
 STA DRAGX
 SEC
 SBC LFTSTOP
 CLC
 ADC #1
 STA LFTSTOP
 LDA #255
 SEC
 SBC RTSTOP
 CLC
 ADC DRAGX
 SEC
 SBC #1
 STA RTSTOP
*
 LDA CY
 STA DRAGY
 SEC
 SBC TOPSTOP
 CLC
 ADC #1
 STA TOPSTOP
 LDA #191
 SEC
 SBC BTMSTOP
 CLC
 ADC CY
 SEC
 SBC #1
 STA BTMSTOP
*
DRAGO6 JSR DRAWOBJ
*
 JSR GETCX
 CMP LFTSTOP
 BCS *+4
 LDA LFTSTOP
 CMP RTSTOP
 BCC *+4
 LDA RTSTOP
 TAX
 SEC
 SBC DRAGX
*
 CMP #$20
 BCC *+6
 CMP #$E0
 BCC DRAGO8
 STA DELX
 STX DRAGX
*
 LDA CY
 CMP TOPSTOP
 BCS *+4
 LDA TOPSTOP
 CMP BTMSTOP
 BCC *+4
 LDA BTMSTOP
 TAX
 SEC
 SBC DRAGY
 STA DELY
 STX DRAGY
*
 LDY #0
DRAGO7 LDA (PLYPTRX),Y
 CLC
 ADC DELX
 STA (PLYPTRX),Y
 LDA (PLYPTRY),Y
 CLC
 ADC DELY
 STA (PLYPTRY),Y
 INY
 CPY VRTXCOUNT
 BNE DRAGO7
*
 LDA OBJID
 CMP #<LIBOBJ
 BCC DRAGO8
*
 LDY #2
 LDA (LB),Y
 CLC
 ADC DELY
 STA (LB),Y
 INY
 LDA (LB),Y
 ASL
 ASL
 ASL
 INY
 CLC
 ADC (LB),Y
 CLC
 ADC DELX
 TAX
 LDA M8,X
 STA (LB),Y
 DEY
 LDA D8,X
 STA (LB),Y
*
DRAGO8 JSR GETB
 BPL DRAGO9
*
 JSR DRAWOBJ
 JSR UPDATEC
 JMP DRAGO6
*
DRAGO9 LDA #<TABLEB
 LDX #>TABLEB
 JSR CINR
 BCC DELETEOBJ
 LDA SCANMODE
 AND #$7F ;MERGE
 STA SCANMODE
 JSR DRAWOBJ
 BCC RTS1
*
 JSR REMOVEPOLY
 JSR DRAWOBJ
 JSR REMOVEPOLY
 JMP DELETEOBJ
RTS1 RTS
*
DELETEOBJ LDY NEXTOBJ
 LDA OBJDX,Y
 STA YTEMP
 TYA
 CLC
 ADC #<OBJDX
 STA TEMP
 LDA #0
 ADC #>OBJDX
 STA TEMP+1
 LDA #1
 LDY #<TEMP
 LDX #<OBJ2
 JSR ADDIYX
 LDA #<OBJ
 LDX #<OBJ2
 LDY #<TEMP
 JSR MOVEDOWN
*
 LDA YTEMP
 LDY #<OBJ
 LDX #<OBJ2
 JSR ADDIYX
 LDA #1
 LDY #<OBJ
 LDX #<OBJ
 JSR SUBIYX
 LDA #<MIDBTM
 LDX #<OBJ2
 LDY #<OBJ
 JSR MOVEDOWN
*
 DEC OBJCOUNT
 DEC PBDATA
 LDX YTEMP
 INX
 TXA
 STA TEMP
 LDY #<MEMBTM
 LDX #<MEMBTM
 JSR SUBIYX
 LDA TEMP
 LDY #<MIDBTM
 LDX #<MIDBTM
 JSR SUBIYX
*
 LDY #1
 JSR MAKEHOLE
*
 LDA MIDTOP
 STA B1
 LDA MIDTOP+1
 STA B1+1
 LDY #1
DELOBJ2 LDA (B1),Y
 CMP NEXTOBJ
 BCC DELOBJ3
 SBC #1
 STA (B1),Y
DELOBJ3 LDX B1+1
 LDA B1
 CLC
 ADC #4
 STA B1
 BCC *+3
 INX
 STX B1+1
 CMP #<PBDX
 BNE DELOBJ2
 CPX #>PBDX
 BNE DELOBJ2
*
 LDY #0
DELOBJ4 JSR FIXINDX
 INY
 JSR FIXINDX
 INY
 JSR FIXINDX
 INY
 INY
 CPY #24
 BCC DELOBJ4
 RTS
*
FIXINDX LDA LOGIC,Y
 CMP NEXTOBJ
 BCC FIXIN2
 BNE *+4
 LDA #1
 SBC #1
 STA LOGIC,Y
FIXIN2 RTS
*
ADDOBJ STX OBJ2
 STY OBJ2+1
 STA YTEMP ;SIZE + 1
*
 LDX OBJCOUNT
 INX
 BMI ABORTAO
 LDA MIDTOP
 SEC
 SBC MIDBTM
 TAX
 LDA MIDTOP+1
 SBC MIDBTM+1
 BNE ADDOBJ1
 TXA
 CMP #32
 BCS ADDOBJ1
ABORTAO RTS
*
ADDOBJ1 LDA YTEMP
 LDY #<MIDBTM
 LDX #<TEMP
 JSR ADDIYX
 INC TEMP
 BNE *+4
 INC TEMP+1
 LDA #<MIDBTM
 LDX #<MEMBTM
 LDY #<TEMP
 JSR MOVEUP
 LDA TEMP
 STA MIDBTM
 LDA TEMP+1
 STA MIDBTM+1
*
 LDY #0
 JSR GETOBJ
 LDA #1
 LDY #<MEMBTM
 LDX #<TEMP
 JSR ADDIYX
 LDA #<MEMBTM
 LDX #<OBJ
 LDY #<TEMP
 JSR MOVEUP
*
 INC MEMBTM
 BNE *+4
 INC MEMBTM+1
 LDY #0
ADDOBJ2 LDA (OBJ2),Y
 STA (MEMBTM),Y
 INY
 CPY YTEMP
 BNE ADDOBJ2
*
 INC OBJCOUNT
 INC PBDATA
 LDY OBJCOUNT
 LDA YTEMP
 STA PBDATA,Y
 LDX #<MEMBTM
 LDY #<MEMBTM
 JSR ADDIYX
 LDA #$80
 STA SCANMODE
 LDY OBJCOUNT
 DEY
 JSR GETOBJ
 JSR DRAWOBJ
 BCC ADDOBJ3
 JSR REMOVEPOLY
 JSR DRAWOBJ
 JMP DELETEOBJ
*
ADDOBJ3 JMP DRAGOBJ2
*
DRAGPOINT JSR SELECTPOINT
 BCC *+3
 RTS
*
 JSR REMOVEPOLY
*
 LDA #$80 ;NO MERGE
 ORA SCANMODE
 STA SCANMODE
 LDA FILLCOLOR
 BEQ *+5
 JSR POLYPOINTS
DRAGP2 JSR DRAWOBJ
 LDY MINPT
 LDA (PLYPTRX),Y
 STA DRAGX
 LDA (PLYPTRY),Y
 STA DRAGY
 JSR GETCX
 BNE *+4
 LDA #1
 CMP #158 ;22*7-2
 BCC *+4
 LDA #158
 STA (PLYPTRX),Y
*
 LDA CY
 BNE *+4
 LDA #1
 CMP #190 ;192-2
 BCC *+4
 LDA #190
 STA (PLYPTRY),Y
*
DRAGP3 JSR ALIGNPOLY
 PHP
 LDA MINPT
 SEC
 SBC YTEMP ;ALIGN DISP
 BCS *+4
 ADC VRTXCOUNT
 STA MINPT
 PLP
 BCC DRAGP4
 TAY
 LDA DRAGX
 STA (PLYPTRX),Y
 LDA DRAGY
 STA (PLYPTRY),Y
 JSR ALIGNPOLY
*
DRAGP4 JSR GETB
 BPL ENDPTEDIT
 JSR DRAWOBJ
 BCS CUTPOINT3
 JSR UPDATEC
 JMP DRAGP2
*
ENDPTEDIT LDA SCANMODE
 AND #$7F ;MERGE
 STA SCANMODE
 LDA FILLCOLOR
 BEQ *+5
 JSR POLYPOINTS
 JSR DRAWOBJ
 BCC RTS2
*
 JSR REMOVEPOLY
 LDA FILLCOLOR
 BEQ *+5
 JSR POLYPOINTS
 JSR DRAWOBJ
 JSR REMOVEPOLY
 JMP CUTPOINT4
*
CUTPOINT JSR SELECTPOINT
 BCC *+3
RTS2 RTS
*
CUTPOINT2 JSR REMOVEPOLY
*
 LDA SCANMODE
 ORA #$80
 STA SCANMODE
 LDA FILLCOLOR
 BEQ *+5
 JSR POLYPOINTS
*
CUTPOINT3 JSR DRAWOBJ
*
CUTPOINT4 LDX VRTXCOUNT
 CPX #4
 BCS *+9
 LDA NEXTOBJ
 BEQ ENDPTEDIT
 JMP DELETEOBJ
 DEX
 TXA
 LDY #2
 STA (OBJ),Y
*
 LDA MINPT ;CHANGE POLY
 LDY #<PLYPTRX
 LDX #<PLYPTRX
 JSR ADDIYX
 LDA #1
 LDY #<PLYPTRX
 LDX #<TEMP
 JSR ADDIYX
 LDA MINPT
 LDY #<PLYPTRY
 LDX #<PLYPTRY
 JSR ADDIYX
 LDA #<PLYPTRY
 LDX #<TEMP
 LDY #<PLYPTRX
 JSR MOVEDOWN
*
 LDA #1
 LDY #<PLYPTRY
 LDX #<PLYPTRY
 JSR SUBIYX
 LDA #2
 LDY #<PLYPTRY
 LDX #<TEMP
 JSR ADDIYX
 LDA #<MIDBTM
 LDX #<TEMP
 LDY #<PLYPTRY
 JSR MOVEDOWN
*
 LDA #2
 LDX #<MEMBTM
 LDY #<MEMBTM
 JSR SUBIYX
 LDA #2
 LDX #<MIDBTM
 LDY #<MIDBTM
 JSR SUBIYX
*
 LDY NEXTOBJ
 LDA PBDATA+1,Y
 SEC
 SBC #2
 STA PBDATA+1,Y
 LDY NEXTOBJ
 JSR GETOBJ
 JSR ALIGNPOLY
 BCC CUTP2
 JMP DELETEOBJ
*
CUTP2 JSR GETB
 BMI CUTP2
 JMP ENDPTEDIT
*
PASTEPOINT JSR SELECTPOINT
 BCC *+3
 RTS
*
 LDX VRTXCOUNT
 CPX #63
 BCS ABORTPP
 LDA MIDTOP
 SEC
 SBC MIDBTM
 TAX
 LDA MIDTOP+1
 SBC MIDBTM+1
 BNE PASTEP2
 TXA
 CMP #$20
 BCS PASTEP2
ABORTPP RTS
*
PASTEP2 JSR REMOVEPOLY
*
 LDA #$80 ;ODDS, NO MERGE
 ORA SCANMODE
 STA SCANMODE
 LDA FILLCOLOR
 BEQ *+5
 JSR POLYPOINTS
*
 JSR DRAWOBJ
 LDX VRTXCOUNT
 INX
 TXA
 LDY #2
 STA (OBJ),Y
*
 LDA MINPT
 LDY #<PLYPTRY
 LDX #<PLYPTRY
 JSR ADDIYX
 LDA #2
 LDY #<MIDBTM
 LDX #<TEMP
 JSR ADDIYX
 LDA #<MIDBTM
 LDX #<PLYPTRY
 LDY #<TEMP
 JSR MOVEUP
*
 LDA MINPT
 LDY #<PLYPTRX
 LDX #<PLYPTRX
 JSR ADDIYX
 LDA #1
 LDY #<PLYPTRY
 LDX #<TEMP
 JSR ADDIYX
 LDA #<PLYPTRY
 LDX #<PLYPTRX
 LDY #<TEMP
 JSR MOVEUP
*
 LDY NEXTOBJ
 JSR GETOBJ
 LDY MINPT
 LDA MINX
 STA (PLYPTRX),Y
 LDA MINY
 STA (PLYPTRY),Y
*
 LDA #2
 LDX #<MEMBTM
 LDY #<MEMBTM
 JSR ADDIYX
 LDA #2
 LDX #<MIDBTM
 LDY #<MIDBTM
 JSR ADDIYX
 LDY NEXTOBJ
 LDA PBDATA+1,Y
 CLC
 ADC #2
 STA PBDATA+1,Y
 JMP DRAGP3
*
DRAWPOINTS LDY #0
 JSR GETOBJ
DRAWPTS2 LDA OBJID
 CMP #<POLYGON
 BNE DRAWPTS4
DRAWPTS3 LDA FILLCOLOR
 BEQ *+5
 JSR POLYPOINTS
 JMP DRAWPTS5
DRAWPTS4 CMP #<BPOLYGON
 BEQ DRAWPTS3
DRAWPTS5 INC NEXTOBJ
 LDY NEXTOBJ
 JSR GETNEXTOBJ
 LDY NEXTOBJ
 CPY OBJCOUNT
 BNE DRAWPTS2
 RTS
*
SELECTPOINT JSR GETCX
 STA CX
 LDA #$FF
 STA MINDIST
 LDY #0
 JSR GETOBJ
SELPNT2 LDA OBJID
 CMP #<POLYGON
 BEQ SELPNT3
 CMP #<BPOLYGON
 BEQ SELPNT3
 JMP SELPNT7
*
SELPNT3 LDY #0
SELPNT4 LDA (PLYPTRX),Y
 STA XTEMP
 LDA (PLYPTRY),Y
 STA YTEMP
 LDA EDITMODE
 CMP #$82 ;PASTE POINT MODE?
 BNE SELPNT5
*
 STY TEMP
 DEY
 BPL *+5
 LDY VRTXCOUNT
 DEY
 LDA (PLYPTRX),Y
 CLC
 ADC XTEMP
 ROR
 STA XTEMP
 LDA (PLYPTRY),Y
 CLC
 ADC YTEMP
 ROR
 STA YTEMP
 LDY TEMP
*
SELPNT5 LDA XTEMP
 SEC
 SBC CX
 BPL *+7
 EOR #$FF
 CLC
 ADC #1
 CMP #8
 BCS SELPNT6
 STA TEMP
*
 LDA YTEMP
 SEC
 SBC CY
 BPL *+7
 EOR #$FF
 CLC
 ADC #1
 CMP #8
 BCS SELPNT6
*
 ADC TEMP
 CMP MINDIST
 BCS SELPNT6
 STA MINDIST
 STY MINPT
 LDA XTEMP
 STA MINX
 LDA YTEMP
 STA MINY
 LDA NEXTOBJ
 STA MINPOLY
*
SELPNT6 INY
 CPY VRTXCOUNT
 BNE SELPNT4
*
SELPNT7 INC NEXTOBJ
 LDY NEXTOBJ
 JSR GETNEXTOBJ
 LDY NEXTOBJ
 CPY OBJCOUNT
 BEQ *+5
 JMP SELPNT2
*
 LDA MINDIST
 CMP #$FF
 BCC *+3
 RTS
 LDY MINPOLY
 STY NEXTOBJ
 JSR GETOBJ
 CLC
 RTS
*
PAINTOBJ JSR XDRAWC
 JSR SELECTPOLY
 BCS PAINTO2
 LDA #0
PAINTO2 TAY
 JSR GETOBJ
*
 LDA OBJID
 CMP #<LIBOBJ
 BEQ PAINTO4
*
 LDA SCANMODE
 ORA #$80
 STA SCANMODE
 LDA FILLCOLOR
 BEQ *+6
 EOR COLOR
 BNE *+5
 JSR POLYPOINTS
 LDA COLOR
 CMP FILLCOLOR
 BNE *+4
 LDA #0 ;BLACK
 LDY #1
 STA (OBJ),Y
 EOR FILLCOLOR
 BEQ PAINTO3
 STA FILLCOLOR
 JSR DRAWOBJ
*
PAINTO3 JSR GETB
 BMI PAINTO3
PAINTO4 JMP XDRAWC
*
CMDMENU DA HANDB
 DA INITHAND
 DA POINTERB
 DA INITPOINTER
 DA SCISSORB
 DA INITSCISSOR
 DA HAMMERB
 DA INITHAMMER
 DA BRUSHB
 DA INITBRUSH
 DA WHITEB
 DA WHITE
 DA GREENB
 DA GREEN
 DA VIOLETB
 DA VIOLET
 DA PLAYB
 DA PLAY
 DA MAGNB
 DA MAGPAINT
 DA WORLDB
 DA SETWORLD
 DA WIREB
 DA WIREKIT
 DA DISKB
 DA DISKIO
 HEX 00
*
BOXLO DA <POLYB
 DA <LAUNCHERB
 DA <LFLIPB
 DA <RFLIPB
 DA <BALLB
 DA <BMP1B
 DA <BMP2B
 DA <BMP3B
 DA <BMP4B
 DA <BMP5B
 DA <BMP6B
 DA <LKICKB
 DA <RKICKB
 DA <KICK1B
 DA <KICK2B
 DA <ROLL1B
 DA <ROLL2B
 DA <ROLL3B
 DA <TARG1B
 DA <TARG2B
 DA <TARG3B
 DA <TARG4B
 DA <TARG5B
 DA <TARG6B
 DA <LFLIP2B
 DA <RFLIP2B
 DA <POLY1B
 DA <POLY2B
 DA <POLY3B
 DA <POLY4B
 DA <LANE1B
 DA <LANE2B
 DA <LANE3B
 DA <GATE1B
 DA <GATE2B
 DA <GATE3B
 DA <GATE4B
 DA <DROP1B
 DA <DROP2B
 DA <CATCH1B
 DA <CATCH2B
 DA <SPINB
 DA <MGNTB
*
BOXHI DA >POLYB
 DA >LAUNCHERB
 DA >LFLIPB
 DA >RFLIPB
 DA >BALLB
 DA >BMP1B
 DA >BMP2B
 DA >BMP3B
 DA >BMP4B
 DA >BMP5B
 DA >BMP6B
 DA >LKICKB
 DA >RKICKB
 DA >KICK1B
 DA >KICK2B
 DA >ROLL1B
 DA >ROLL2B
 DA >ROLL3B
 DA >TARG1B
 DA >TARG2B
 DA >TARG3B
 DA >TARG4B
 DA >TARG5B
 DA >TARG6B
 DA >LFLIP2B
 DA >RFLIP2B
 DA >POLY1B
 DA >POLY2B
 DA >POLY3B
 DA >POLY4B
 DA >LANE1B
 DA >LANE2B
 DA >LANE3B
 DA >GATE1B
 DA >GATE2B
 DA >GATE3B
 DA >GATE4B
 DA >DROP1B
 DA >DROP2B
 DA >CATCH1B
 DA >CATCH2B
 DA >SPINB
 DA >MGNTB
*
OBJLEN HEX 0B1B1B1B222323
 HEX 1B1B1B1B1D1D1B1B1B
 HEX 1B1B1B1B1B1B1B1B1B
 HEX 1B0B0B0B0B1B1B1B1B
 HEX 1B1B1B1C1C1E1B1C1B
*
OBJADDRLO DA <POLY
 DA <LAUNCHER
 DA <LEFTFLIPPER
 DA <RIGHTFLIPPER
 DA <BALL
 DA <BMP1
 DA <BMP2
 DA <BMP3
 DA <BMP4
 DA <BMP5
 DA <BMP6
 DA <LKICK
 DA <RKICK
 DA <KICK1
 DA <KICK2
 DA <ROLL1
 DA <ROLL2
 DA <ROLL3
 DA <TARG1
 DA <TARG2
 DA <TARG3
 DA <TARG4
 DA <TARG5
 DA <TARG6
 DA <LFLIP2
 DA <RFLIP2
 DA <POLY1
 DA <POLY2
 DA <POLY3
 DA <POLY4
 DA <LANE1
 DA <LANE2
 DA <LANE3
 DA <GATE1
 DA <GATE2
 DA <GATE3
 DA <GATE4
 DA <DROP1
 DA <DROP2
 DA <CATCH1
 DA <CATCH2
 DA <SPIN
 DA <MGNT
*
OBJADDRHI DA >POLY
 DA >LAUNCHER
 DA >LEFTFLIPPER
 DA >RIGHTFLIPPER
 DA >BALL
 DA >BMP1
 DA >BMP2
 DA >BMP3
 DA >BMP4
 DA >BMP5
 DA >BMP6
 DA >LKICK
 DA >RKICK
 DA >KICK1
 DA >KICK2
 DA >ROLL1
 DA >ROLL2
 DA >ROLL3
 DA >TARG1
 DA >TARG2
 DA >TARG3
 DA >TARG4
 DA >TARG5
 DA >TARG6
 DA >LFLIP2
 DA >RFLIP2
 DA >POLY1
 DA >POLY2
 DA >POLY3
 DA >POLY4
 DA >LANE1
 DA >LANE2
 DA >LANE3
 DA >GATE1
 DA >GATE2
 DA >GATE3
 DA >GATE4
 DA >DROP1
 DA >DROP2
 DA >CATCH1
 DA >CATCH2
 DA >SPIN
 DA >MGNT
*
TABLEB HEX 000000BF1307
*
KITB HEX 001400BF1307
*
TOOLB HEX 002104BF0303
*
HANDB HEX 0021040E0303
*
POINTERB HEX 0F2104090303
*
SCISSORB HEX 1921040D0303
*
HAMMERB HEX 2721040D0303
*
BRUSHB HEX 3521040A0303
*
WHITEB HEX 402104090303
*
GREENB HEX 4A2104090303
*
VIOLETB HEX 542104090303
*
PLAYB HEX 6921040C0303
*
MAGNB HEX 7721040C0303
*
WORLDB HEX 8521040C0303
*
WIREB HEX 9321040C0303
*
DISKB HEX A121040D0303
*
POLYB HEX 1B1406100200
*
LAUNCHERB HEX 491D060C0006
*
LFLIPB HEX 021902100202
*
RFLIPB HEX 021B02100202
*
BALLB HEX 051E05050005
*
BMP1B HEX 301406110201
*
BMP2B HEX 3117000A0105
*
BMP3B HEX 301807100004
*
BMP4B HEX 351905050202
*
BMP5B HEX 301C020D0104
*
BMP6B HEX 301E000D0104
*
LKICKB HEX 4414061A0202
*
RKICKB HEX 4417041A0202
*
KICK1B HEX 4A1A050D0005
*
KICK2B HEX 4E1B06060103
*
ROLL1B HEX A01501050004
*
ROLL2B HEX A01600050004
*
ROLL3B HEX A01607050004
*
TARG1B HEX A01800030006
*
TARG2B HEX A01903030006
*
TARG3B HEX A01A06030006
*
TARG4B HEX A01C03070002
*
TARG5B HEX A01D02070002
*
TARG6B HEX A01E01070002
*
LFLIP2B HEX 0514060A0104
*
RFLIP2B HEX 0516030A0104
*
POLY1B HEX 1B1806120001
*
POLY2B HEX 2019040D0001
*
POLY3B HEX 251A020A0401
*
POLY4B HEX 161A020A0401
*
LANE1B HEX 9015010A0004
*
LANE2B HEX 901603080004
*
LANE3B HEX 901705050004
*
GATE1B HEX 901901090006
*
GATE2B HEX 901A07090006
*
GATE3B HEX 901C05090006
*
GATE4B HEX 901E03090006
*
DROP1B HEX 641606040400
*
DROP2B HEX 641500200005
*
CATCH1B HEX 6C1702130102
*
CATCH2B HEX 701903090102
*
SPINB HEX 641C06050006
*
MGNTB HEX 741C04070101
*
ICONS DA HAND
 DA POINTER
 DA SCISSOR
 DA HAMMER
 DA BRUSH
 DA WHITEPAINT
 DA GREENPAINT
 DA VIOLETPAINT
 DA PLAYICON
 DA MAGNIFIER
 DA WORLD
 DA ANDG
 DA DISK
 DA POLYICON
 DA LAUNCHER+$B
 DA LEFTFLIPPER+$B
 DA RIGHTFLIPPER+$B
 DA BALL+$B
 DA BMP1+$13
 DA BMP2+$13
 DA BMP3+$B
 DA BMP4+$B
 DA BMP5+$B
 DA BMP6+$B
 DA LKICK+$D
 DA RKICK+$D
 DA KICK1+$B
 DA KICK2+$B
 DA ROLL1+$B
 DA ROLL2+$B
 DA ROLL3+$B
 DA TARG1+$B
 DA TARG2+$B
 DA TARG3+$B
 DA TARG4+$B
 DA TARG5+$B
 DA TARG6+$B
 DA LFLIP2+$B
 DA RFLIP2+$B
 DA LANE1+$B
 DA LANE2+$B
 DA LANE3+$B
 DA GATE1+$B
 DA GATE2+$B
 DA GATE3+$B
 DA GATE4+$B
 DA DROP1+$B
 DA DROP2+$B
 DA CATCH1+$D
 DA CATCH2+$B
 DA SPIN+$B
 DA MGNT+$B
*
POLYS DA POLY1
 DA POLY2
 DA POLY3
 DA POLY4
*
WHITEPAINT DA *+7
 HEX 4222040702
 HEX FFC0FFC00000FFC0FFC0FFC0FFC0
*
GREENPAINT DA *+7
 HEX 4C22040702
 HEX FFC0FFC000005540554055405540
*
VIOLETPAINT DA *+7
 HEX 5622040702
 HEX 7FE07FE000002AA02AA02AA02AA0
*
PLAYICON DA *+7
 HEX 6B22030A02
 HEX 7838FC7CFE7CFF7C7FB81FC007E001F000780018
*
MAGNIFIER DA *+7
 HEX 7922030A02
 HEX 1F0060C0C060C060C06060C01F8001C000E00060
*
WORLD DA *+7
 HEX 8722020A02
 HEX 0FC03AA06AA8EAA8EAA8EAA8EAA86AA83AA00FC0
*
ANDG DA *+7
 HEX 9522020A03
 HEX CFE000CC38000C0C000C0600CC0630CC06300C06000C0C00CC3800CFE000
*
DISK DA *+7
 HEX A322020B02
 HEX FFF8800887088F888F888F888708800882088208FFF8
*
POLYICON DA *+7
 HEX 1914061003
 HEX E000E0EFFEE0E000E0000000
 HEX 400040400040400040400040
 HEX 400040400040400040400040
 HEX 000000E000E0EFFEE0E000E0
*
MAGSTART LDA #<ICON1
 LDX #>ICON1
 JSR XOFFDRAW
 JSR DRAWQUIT
 LDA #<ICON2
 LDX #>ICON2
 JSR XOFFDRAW
*
 JSR INITMAG
 LDA #<BRUSH
 LDX #>BRUSH
 JSR INITC
*
MMAIN JSR UPDATEC
 JSR GETB
 BPL MMAIN
*
 LDA #<VR
 LDX #>VR
 JSR CINR
 BCC MMAIN3
MMAIN2 JSR DRAG
 JMP MMAIN
*
MMAIN3 LDA #<MAGB
 LDX #>MAGB
 JSR CINR
 BCC MMAIN4
 LDA #<MAG
 LDX #>MAG
 JSR CINR
 BCC *+8
 JSR PLOT
 JMP MMAIN
 JSR SLIDEMAG
 JMP MMAIN
*
MMAIN4 LDA #<MCMDB
 LDX #>MCMDB
 JSR CINR
 BCC MMAIN2
 LDA #0
 STA LASTITEM+1
 JMP MDOCMD
*
MDOCMD LDA #<MCMDMENU
 LDX #>MCMDMENU
 JSR DOMENU
 JMP MMAIN
*
MCMDMENU DA COLBWB
 DA SWITCHCOLBW
 DA GRIDB
 DA GRIDTOGL
 DA MQUITB
 DA MQUIT
 DA MWHTB
 DA MWHITE
 DA MGRNB
 DA MGREEN
 DA MVLTB
 DA MVIOLET
 HEX 00
*
MQUIT JSR DRAWVIEWR
WQUIT PLA
 PLA
 RTS
*
DRAWQUIT LDA #6
 LDX #$17
 LDY #178
 JSR CHARTO
 LDA #<QUITMSG
 LDX #>QUITMSG
 JMP PRINT
QUITMSG HEX 1A1E129D
*
MWHITE LDY #$FF
MSETCLR BIT COLBW
 BMI MSETCLR2
 STY MCOLOR
MSETCLR2 RTS
*
MGREEN LDY #$55
 BNE MSETCLR
*
MVIOLET LDY #$AA
 BNE MSETCLR
*
PLOT JSR DRAWVIEWR
 LDA MCOLOR
 STA COLOR
 JSR INSQR
 STX XTEMP
 STY YTEMP
 STA TEMP
 JSR INMAG
 BCS PLOT6
 JSR HPLOT
 BCC PLOT2
 LDA MCOLOR
 BCS PLOT3
PLOT2 LDA #0
PLOT3 STA COLOR
 LDX XTEMP
 LDY YTEMP
 LDA TEMP
 JSR HPLOT
 JMP PLOT5
*
PLOT4 JSR INSQR
 BCC PLOT6
 STX XTEMP
 STY YTEMP
 STA TEMP
 JSR INMAG
 BCS PLOT6
 JSR HPLOT
 BCC PLOT6
PLOT5 JSR DISPLAYPLOT
PLOT6 JSR UPDATEC
 JSR GETB
 BMI PLOT4
 JMP DRAWVIEWR
*
DISPLAYPLOT JSR XDRAWC
 LDA CY
 SEC
 SBC #71
 LDY #0
DIV7A CMP #7
 BCC DIV7B
 SBC #7
 INY
 BNE DIV7A
DIV7B TYA
 TAX
 CLC
 ADC VRY
 STA VERTA
 LDA MUL7,X
 CLC
 ADC #71
 STA VERTB
*
 LDA VRXD8
 STA D8A
 LDA VRXM8
 STA M8A
 JSR DOROW
 JMP XDRAWC
*
INMAG STX PARAM+3
 STA PARAM+4
 STY PARAM+5
 LDA #<MCMDB
 LDX #>MCMDB
 JSR INR
 LDA TEMP
 LDX XTEMP
 LDY YTEMP
 RTS
*
HPLOT LDA LO,Y
 STA B1
 LDA HI,Y
 STA B1+1
*
 BIT COLBW
 BPL HPLOT2
*
 TXA
 TAY
 LDX TEMP
 LDA COLOR
 EOR (B1),Y
 AND MASK,X
 EOR (B1),Y
 CMP (B1),Y
 SEC
 BNE *+3
 CLC
 STA (B1),Y
 RTS
*
HPLOT2 TXA
 TAY
 LDA TEMP
 AND #$FE
 TAX
 LDA COLOR
 EOR (B1),Y
 AND CLRMASK,X
 EOR (B1),Y
 CMP (B1),Y
 SEC
 BNE *+3
 CLC
 STA (B1),Y
 RTS
*
MASK HEX 8040201008040201
*
CLRMASK HEX C00030000C0003
*
MUL7 HEX 00070E151C232A
 HEX 31383F464D545B
 HEX 626970777E858C
 HEX 939AA1A8AFB6BD
 HEX C4CBD2D9E0E7EE
*
MCMDB HEX 4014007F1107
*
COLBWB HEX B014000B0105
*
GRIDB HEX B015060B0105
*
MQUITB HEX B017040B0305
*
MWHTB HEX B01B020B0104
*
MGRNB HEX B01C070B0104
*
MVLTB HEX B01E040B0104
*
ICON1 DA *+7
 HEX B114000A04
 HEX 7FF9F7C07E19F7C07E19F7C07E19F7C0
 HEX 7E1800007E19F7C07E19F7C07E19F7C0
 HEX 7E19F7C07FF80000
*
ICON2 DA *+7
 HEX B11B000A05
 HEX 0FF87FC3FE
 HEX 0FF87FC3FE
 HEX 0000000000
 HEX 0FF85542AA
 HEX 0FF85542AA
 HEX 0FF85542AA
 HEX 0FF85542AA
 HEX 0FF85542AA
 HEX 0FF85542AA
 HEX 0FF85542AA
*
INITMAG LDY #4
 JSR SETMODE
*
 LDA #<MBAR1
 LDX #>MBAR1
 JSR DRAWR
 LDA #<MBAR2
 LDX #>MBAR2
 JSR DRAWR
 LDA #<MBAR3
 LDX #>MBAR3
 JSR DRAWR
 LDA #<MBAR4
 LDX #>MBAR4
 JSR DRAWR
*
 LDA #$00
 STA COLBW
 STA GRIDON
 LDY #$FF
 STY MCOLOR
*
 LDA #0
 STA VRY
 STA VRXD8
 STA VRXM8
 LDA #13
 STA VR+3
 LDA #1
 STA VR+4
 LDA #7
 STA VR+5
 JSR BLOWUP
*
 LDY #2
 JSR SETMODE
*
DRAWVIEWR LDA #<VR
 LDX #>VR
 JMP FRAMER
*
SWITCHCOLBW LDA COLBW
 EOR #$80
 STA COLBW
 LDY #$FF
 STY MCOLOR
DOCMDOUT JMP MAGNIFY
*
GRIDTOGL LDA GRIDON
 EOR #$80
 STA GRIDON
 BMI GRIDTGL2
*
 LDA #$FF
 STA GMOD1
 STA GMOD3
 STA GMOD4
 LDA #$55
 STA GMOD5
 LDA #$AA
 STA GMOD7
 BNE DOCMDOUT
*
GRIDTGL2 LDA #$FE
 STA GMOD1
 STA GMOD3
 STA GMOD4
 LDA #$54
 STA GMOD5
 LDA #$A8
 STA GMOD7
 BNE DOCMDOUT
*
INSQR LDA #<MAG
 LDX #>MAG
 JSR CINR
 PHP
 LDA CY
 SEC
 SBC #71
 LDY #0
DIV7C CMP #7
 BCC DIV7D
 SBC #7
 INY
 BNE DIV7C
DIV7D TYA
 ADC VRY
 TAY
 LDA CXD8
 SEC
 SBC #21
 CLC
 ADC VRXM8
 LDX VRXD8
INSQR2 CMP #8
 BCC INSQR3
 SBC #8
 INX
 BCS INSQR2
INSQR3 PLP
 RTS
*
SLIDEMAG LDA #0
 STA XDIR
 STA YDIR
*
 LDA #<MBAR1
 LDX #>MBAR1
 JSR CINR
 BCC SLIDEM2
 LDY #$FE
 STY YDIR
 BNE SLIDEM3
*
SLIDEM2 LDA #<MBAR4
 LDX #>MBAR4
 JSR CINR
 BCC SLIDEM3
 LDY #2
 STY YDIR
*
SLIDEM3 LDA #<MBAR2
 LDX #>MBAR2
 JSR CINR
 BCC SLIDEM4
 LDX #$FE
 STX XDIR
 BNE SLIDEM5
*
SLIDEM4 LDA #<MBAR3
 LDX #>MBAR3
 JSR CINR
 BCC SLIDEM5
 LDX #2
 STX XDIR
*
SLIDEM5 JSR XDRAWC
 JSR SLIDEVIEWR
 JSR XDRAWC
 RTS
*
SLIDEVIEWR JSR DRAWVIEWR
*
 CLC
 LDX VRXD8
 LDA XDIR
 BMI SLIDEVWR2
 ADC VRXM8
 CMP #8
 BCC *+5
 SBC #8
 INX
 CPX #38
 BCC SLIDEVWR3
 BNE SLIDEVWR4
 CMP #1
 BCC SLIDEVWR3
 BCS SLIDEVWR4
*
SLIDEVWR2 ADC VRXM8
 BPL *+5
 ADC #8
 DEX
 BMI SLIDEVWR4
*
SLIDEVWR3 STX VRXD8
 STA VRXM8
*
SLIDEVWR4 CLC
 LDA YDIR
 BMI SLIDEVWR5
 ADC VRY
 CMP #179
 BCS SLIDEVWR7
 BCC SLIDEVWR6
SLIDEVWR5 ADC VRY
 BCC SLIDEVWR7
SLIDEVWR6 STA VRY
*
SLIDEVWR7 JSR BLOWUP
 JSR DRAWVIEWR
*
 LDA #50
 JSR WAIT
 JSR GETB
 BPL *+5
 JMP SLIDEVIEWR
 RTS
*
DRAG JSR XDRAWC
DRAG2 JSR DRAWVIEWR
*
 JSR DOCX
 STX CXD8
 STA CXM8
 JSR DOCY
 STA CY
*
 CMP #178
 BCC *+4
 LDA #178
 STA VRY
*
 LDX CXD8
 LDA CXM8
 AND #$FE
*
DRAG4 CPX #38
 BCC DRAG6
 BNE DRAG5
DRAG5 LDX #38
 LDA #0
*
DRAG6 STX VRXD8
 STA VRXM8
*
 JSR BLOWUP
 JSR DRAWVIEWR
*
 LDA #80
 JSR WAIT
 JSR GETB
 BMI DRAG2
 JSR XDRAWC
 RTS
*
MAGNIFY JSR DRAWVIEWR
 JSR BLOWUP
 JMP DRAWVIEWR
*
BLOWUP LDA #71
 STA VERTB
 LDA VRY
 STA VERTA
 LDA VRXD8
 STA D8A
 LDA VRXM8
 STA M8A
*
BLOWUP2 JSR DOROW
 INC VERTA
 LDA VERTB
 CLC
 ADC #7
 STA VERTB
 CMP #169
 BCC BLOWUP2
 RTS
*
DOROW LDY VERTA
 LDA LO,Y
 STA B1
 LDA HI,Y
 STA B1+1
*
 LDY VERTB
 LDX #0
 BIT COLBW
 BPL DOROWCLR
*
DOROWBW LDA LO,Y
 STA UNWND1,X
 LDA HI,Y
 STA UNWND1+1,X
 INY
 INX
 INX
 INX
 CPX #18
 BCC DOROWBW
*
 JSR INITROW
 LDX #16
 STX DRCNT
 LDX #21
*
DODOTBW PHP
 ROL
 DEC BITS
 BNE DODOTBW2
 INY
 LDA #8
 STA BITS
 LDA (B1),Y
*
DODOTBW2 BCC DODOTBW5
*
 PLP
 PHA
 SEC
GMOD1 EQU *+1
 LDA #$FF
 BNE ZAPBW
*
DODOTBW5 PLP
 PHA
 CLC
 LDA #$00
*
UNWND1 EQU *+1
ZAPBW STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
 INX
 PLA
*
 DEC DRCNT
 BNE DODOTBW
 RTS
*
DOROWCLR LDA LO,Y
 STA UNWND2A,X
 STA UNWND2B,X
 LDA HI,Y
 STA UNWND2A+1,X
 STA UNWND2B+1,X
 INY
 INX
 INX
 INX
 CPX #18
 BCC DOROWCLR
*
 JSR INITROW
 LDX #8
 STX DRCNT
 LDX #21
*
DODOTCLR PHP
 ROL
 DEC BITS
 BNE DODOTCLR2
 INY
 LDA #8
 STA BITS
 LDA (B1),Y
*
DODOTCLR2 PHP
 ROL
 DEC BITS
 BNE DODOTCLR3
 INY
 LDA #8
 STA BITS
 LDA (B1),Y
*
DODOTCLR3 BCC DODOTCLR6
 PLP
 BCC DODOTCLR4
*
 PLP
 PHA
 SEC
GMOD3 EQU *+1
 LDA #$FF
 STA BYTE2
 LDA #$FF
 BNE ZAPCLR
*
DODOTCLR4 PLP
 PHA
 ROL
 DEC BITS
 BNE *+7
 INY
 LDA (B1),Y
 ROL
 DEY
 INC BITS
 BCC DODOTCLR5
*
 SEC
GMOD4 EQU *+1
 LDA #$FF
 STA BYTE2
 LDA #$00
 BCS ZAPCLR
*
DODOTCLR5 SEC
GMOD5 EQU *+1
 LDA #$55
 STA BYTE2
 LDA #$55
 BNE ZAPCLR
*
DODOTCLR6 PLP
 BCC DODOTCLR8
 PLP
 PHA
 BCC DODOTCLR7
*
 CLC
 LDA #$00
 STA BYTE2
 LDA #$FF
 BNE ZAPCLR
*
DODOTCLR7 CLC
GMOD7 EQU *+1
 LDA #$AA
 STA BYTE2
 LDA #$AA
 BNE ZAPCLR
*
DODOTCLR8 PLP
 PHA
 CLC
 LDA #$00
 STA BYTE2
*
UNWND2A EQU *+1
ZAPCLR STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
 INX
 LDA BYTE2
UNWND2B EQU *+1
 STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
 STA $FFFF,X
*
 PLA
 INX
 DEC DRCNT
 BEQ *+5
 JMP DODOTCLR
 RTS
*
INITROW LDY D8A
 LDX M8A
 BNE INITROW2
 CLC
 DEY
 BMI INITROW1
 LDA (B1),Y
 ROR
INITROW1 INY
 LDA #8
 STA BITS
 LDA (B1),Y
 RTS
*
INITROW2 LDA #8
 STA BITS
 LDA (B1),Y
INITROW3 ROL
 DEC BITS
 DEX
 BNE INITROW3
INITROW4 RTS
*
MAGB HEX 4014006F1107
*
MAG HEX 471500610F07
*
MBAR1 HEX 401400061107
*
MBAR2 HEX 4014006F0007
*
MBAR3 HEX 4025006F0007
*
MBAR4 HEX A91400061107
*
WORLDSTART JSR DRAWQUIT
*
 LDY #0
WSTRT2 STY YTEMP
 LDA SLIDESLO,Y
 LDX SLIDESHI,Y
 JSR XOFFDRAW
 LDY YTEMP
 JSR INITSLIDE
 INY
 CPY #4
 BNE WSTRT2
*
 LDA #0
 LDX #21
 LDY #6
 JSR CHARTO
 LDA #<HEAD1
 LDX #>HEAD1
 JSR PRINT
 LDA #1
 LDX #29
 LDY #6
 JSR CHARTO
 LDA #<HEAD2
 LDX #>HEAD2
 JSR PRINT
 LDA #1
 LDX #22
 LDY #70
 JSR CHARTO
 LDA #<HEAD3
 LDX #>HEAD3
 JSR PRINT
 LDA #1
 LDX #27
 LDY #70
 JSR CHARTO
 LDA #<HEAD4
 LDX #>HEAD4
 JSR PRINT
*
 LDA #<HAND
 LDX #>HAND
 JSR INITC
*
WMAIN JSR UPDATEC
 JSR GETB
 BPL WMAIN
*
WMAIN2 LDY #0
WMAIN3 LDA SLBLO,Y
 LDX SLBHI,Y
 STY YTEMP
 JSR CINR
 LDY YTEMP
 BCC WMAIN4
 JSR DOSLIDE
 JMP WMAIN
WMAIN4 INY
 CPY #4
 BNE WMAIN3
*
 LDA #<MCMDB
 LDX #>MCMDB
 JSR CINR
 BCC WMAIN
 LDA #0
 STA LASTITEM+1
 JMP WDOCMD
*
WDOCMD LDA #<WCMDMENU
 LDX #>WCMDMENU
 JSR DOMENU
 JMP WMAIN
*
WCMDMENU DA MQUITB
 DA WQUIT
 HEX 00
*
DOSLIDE LDA SLIDESLO,Y
 STA SLB
 LDA SLIDESHI,Y
 STA SLB+1
DOSL2 LDA WSET,Y
 STA SLOLD
 LDA CY
 SEC
 LDY #2
 SBC (SLB),Y
 BCS DOSL3
 LDY #0
 BEQ DOSL5
*
DOSL3 LDY #7
DOSL4 CMP SLDXDY,Y
 BCS DOSL5
 DEY
 BNE DOSL4
DOSL5 STY SLNEW
 TYA
 LDY YTEMP
 STA WSET,Y
 JSR MOVESLIDE
 JSR UPDATEC
 LDY YTEMP
 JSR GETB
 BMI DOSL2
 RTS
*
INITSLIDE LDA SLIDESLO,Y
 STA SLB
 LDA SLIDESHI,Y
 STA SLB+1
 LDA #0
 STA SLOLD
 LDA WSET,Y
 STA SLNEW
*
MOVESLIDE LDY #2
 LDA (SLB),Y
 STA TEMP
 INY
 LDA (SLB),Y
 STA SLDX+3
 INY
 LDA (SLB),Y
 STA SLDX+4
*
MOVESL2 LDY SLOLD
 CPY SLNEW
 BEQ MOVESL5
 BCS MOVESL3
*
 INC SLOLD
 LDA SLDXDY,Y
 BNE MOVESL4
*
MOVESL3 DEC SLOLD
 LDA SLDXDY-1,Y
MOVESL4 CLC
 ADC TEMP
 STA SLDX+2
 LDA #<SLDX
 LDX #>SLDX
 JSR XOFFDRAW
 JMP MOVESL2
MOVESL5 LDY YTEMP
 RTS
*
SLDXDY HEX 0205080B0E111417
SLDX DA *+7
 HEX 0000000602
 HEX 0D800D800D800D800D800D80
SLBLO DA <SL1B
 DA <SL2B
 DA <SL3B
 DA <SL4B
SLBHI DA >SL1B
 DA >SL2B
 DA >SL3B
 DA >SL4B
SL1B HEX 1016061C0105
SL2B HEX 101D061C0105
SL3B HEX 5016061C0105
SL4B HEX 501D061C0105
*
SLIDESLO DA <SLIDE1
 DA <SLIDE2
 DA <SLIDE3
 DA <SLIDE4
SLIDESHI DA >SLIDE1
 DA >SLIDE2
 DA >SLIDE3
 DA >SLIDE4
SLIDE1 DA SLIDEBITS
 HEX 1016061C02
SLIDE2 DA SLIDEBITS
 HEX 101D061C02
SLIDE3 DA SLIDEBITS
 HEX 5016061C02
SLIDE4 DA SLIDEBITS
 HEX 501D061C02
SLIDEBITS HEX FFF8C018CF98EFB8CF98C218E238
 HEX C218C218E238C218C218E238C218
 HEX C218E238C218C218E238C218C218
 HEX E238C218C218E238C218C018FFF8
*
HEAD1 HEX 101B0A1F121DA2
HEAD2 HEX 1C190E0E8D
HEAD3 HEX 14120C94
HEAD4 HEX 0E150A1C1D120C121DA2
