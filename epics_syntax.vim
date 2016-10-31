" http://www.aps.anl.gov/epics/tech-talk/2014/msg01223.php


if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.tpl-arch			setfiletype epicsArch
  au! BufRead,BufNewFile *.tpl-req			setfiletype epicsArch
  au! BufRead,BufNewFile *.arch*			setfiletype epicsArch
  au! BufRead,BufNewFile *.req				setfiletype epicsArch
  au! BufRead,BufNewFile *.db				setfiletype epicsDb
  au! BufRead,BufNewFile *.dbd				setfiletype epicsDb
  au! BufRead,BufNewFile *.template			setfiletype epicsDb
  au! BufRead,BufNewFile *.tpl-db			setfiletype epicsDb
  au! BufRead,BufNewFile *.substitutions		setfiletype epicsSub
  au! BufRead,BufNewFile *.sub-*			setfiletype epicsSub
  au! BufRead,BufNewFile *.st				setfiletype epicsSNL
  au! BufRead,BufNewFile *.stt				setfiletype epicsSNL
  au! BufRead,BufNewFile *.alhConfig			setfiletype epicsAlh
augroup END
" Vim syntax file
" Language:	EPICS Alh
" Maintainer:	Steve Lewis <salewis@computer.org>
" Last Change:	2010 Jun 18

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" EPICS keywords
syn keyword	epicsAlhSttmnt	GROUP CHANNEL

syn keyword	epicsAlhPreProc	INCLUDE

syn keyword	epicsAlhType	END GUIDANCE
syn keyword	epicsAlhType	COMMAND SEVRCOMMAND STATCOMMAND
syn keyword	epicsAlhType	ALARMCOUNTFILTER BEEPSEVERITY
syn keyword	epicsAlhType	HEARTBEATPV SEVRPV ACKPV
syn keyword	epicsAlhType	FORCEPV FORCEPV_CALC
syn keyword	epicsAlhType	FORCEPV_CALC_A FORCEPV_CALC_B FORCEPV_CALC_C
syn keyword	epicsAlhType	FORCEPV_CALC_D FORCEPV_CALC_E FORCEPV_CALC_F

syn keyword	epicsAlhSpecial	ALIAS NULL

syn keyword	epicsAlhCnstnt	NO_ALARM HIHI HIGH LOLO LOW
syn keyword	epicsAlhCnstnt	READ WRITE READ_ACCESS WRITE_ACCESS
syn keyword	epicsAlhCnstnt	STATE COS COMM TIMEOUT HWLIMIT CALC SCAN
syn keyword	epicsAlhCnstnt	LINK SOFT BAD_SUB UDF DISABLE SIMM

" Comment
syn match       epicsAlhComment  "^#.*$"

" String and Character constants
syn match	epicsAlhString	/"[^"]*"/

" Define the default highlighting.
hi def link epicsAlhSttmnt	Statement
hi def link epicsAlhType	Type
hi def link epicsAlhSpecial	Special
hi def link epicsAlhCnstnt	Constant
hi def link epicsAlhPreProc	PreProc
hi def link epicsAlhString	String
hi def link epicsAlhComment	Comment

let b:current_syntax = "epicsAlh"

" vim: ts=8
" Vim syntax file
" Language:	EPICS Archive or Archive Template
" Maintainer:	Bruce Hill (SLAC)
" Last Change:	2011 Aug 15

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" EPICS statements
syn match	epicsArchStmt	/^\s*[a-zA-Z0-9_:.-]\+\s\+\d\+\s*/

" EPICS keywords
syn keyword	epicsArchType	monitor scan
syn match	epicsArchFreq	/\<\d\+\>/

" EPICS comment
syn match	epicsArchComment	"^#.*$"
" syn match	epicsArchString	/"[^"]*"/

" String and Character constants

" Define the default highlighting.
hi def link epicsArchStmt	Statement
hi def link epicsArchType	Type
hi def link epicsArchFreq	PreProc
hi def link epicsArchComment	Comment
hi def link epicsArchString	String

let b:current_syntax = "epicsArch"

" vim: ts=4
" Vim syntax file
" Language:	EPICS DB or DBD
" Maintainer:	Steve Lewis <salewis@computer.org>
" Last Change:	2010 Jun 17

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" EPICS keywords
syn keyword	epicsDbSttmnt	record field
syn keyword	epicsDbType	ai ao bi bo longin longout calc calcout
syn keyword	epicsDbType	compress dfanout event fanout mbbi mbbo
syn keyword	epicsDbType	mbbiDirect mbboDirect permissive sel seq
syn keyword	epicsDbType	state stringin stringout sub subArray
syn keyword	epicsDbType	waveform genSub aSub transform swait
syn keyword	epicsDbType	scalcout acalcout busy scanparm sscan
syn keyword	epicsDbType	asyn motor bsa longSub er erevent

syn keyword	epicsDbField	NAME DESC ASG TSE TSEL DTYP TPRO TIME
syn keyword	epicsDbField	PROC DISS PACT FLNK STAT SEVR ACKS ACKT UDF
syn keyword	epicsDbField	SCAN PINI PHAS EVNT PRIO DISV DISA SDIS DISS
syn keyword 	epicsDbField	INP VAL SIOL SIMS SIML SIMM IVOA IVOV RVAL SVAL
syn keyword 	epicsDbField	OUT DOL OMSL OIF LINR EGUF EGUL OVAL RBV ORBV
syn keyword 	epicsDbField	AOFF ASLO SMOO HOPR LOPR PREC EGU ROFF ESLO
syn keyword 	epicsDbField	HIHI HIGH LOW LOLO HHSV HSV LSV LLSV ALST MLST
syn keyword 	epicsDbField	HYST ADEL MDEL DRVH DRVL OROC ORAW LALM
syn keyword 	epicsDbField	ZNAM ONAM ZSV OSV COSV HIGH MASK
syn keyword 	epicsDbField	INPA INPB INPC INPD INPE INPF
syn keyword 	epicsDbField	INPG INPH INPI INPJ INPK INPL
syn keyword 	epicsDbField	A B C D E F G H I J K L
syn keyword 	epicsDbField	LA LB LC LD LE LF LG LH LI LJ LK LL
syn keyword 	epicsDbField	CALC OUT OOPT DOPT OCAL OEVT ODLY DLYA
syn keyword 	epicsDbField	RES ALG NSAM N ILIL IHIL NUSE INX
syn keyword 	epicsDbField	OUTA OUTB OUTC OUTD OUTE OUTF OUTG OUTH
syn keyword 	epicsDbField	LNK1 LNK2 LNK3 LNK4 LNK5 LNK6 SELM SELN SELL
syn keyword 	epicsDbField	SVL SGNL NELM ULIM LLIM SDEL CMD CSTA WDTH
syn keyword 	epicsDbField	SHFT UNSV NOBT SDEF
syn keyword 	epicsDbField	ZRVL ONVL TWVL THVL FRVL FVVL SXVL SVVL
syn keyword 	epicsDbField	EIVL NIVL TEVL ELVL TVVL TTVL FTVL FFVL
syn keyword 	epicsDbField	ZRST ONST TWST THST FRST FVST SXST SVST
syn keyword 	epicsDbField	EIST NIST TEST ELST TVST TTST FTST FFST
syn keyword 	epicsDbField	ZRSV ONSV TWSV THSV FRSV FVSV SXSV SVSV
syn keyword 	epicsDbField	EISV NISV TESV ELSV TVSV TTSV FTSV FFSV
syn keyword 	epicsDbField	B0 B1 B2 B3 B4 B5 B6 B7 B8 B9 BA BB BC BD BE BF
syn keyword 	epicsDbField	LABL OFLG WFLG NVL
syn keyword 	epicsDbField	DLY1 DOL1 DO1 LNK1 DLY2 DOL2 DO2 LNK2
syn keyword 	epicsDbField	DLY3 DOL3 DO3 LNK3 DLY4 DOL4 DO4 LNK4
syn keyword 	epicsDbField	DLY5 DOL5 DO5 LNK5 DLY6 DOL6 DO6 LNK6
syn keyword 	epicsDbField	DLY7 DOL7 DO7 LNK7 DLY8 DOL8 DO8 LNK8
syn keyword 	epicsDbField	DLY9 DOL9 DO9 LNK9 DLYA DOLA DOA LNKA
syn keyword 	epicsDbField	FTVL MALM INDX BUSY NORD INAM SNAM PRSV
syn keyword 	epicsDbField	LFLG EFLG
syn keyword 	epicsDbField	INPM INPN INPO INPP INPQ INPR INPS INPT INPU
syn keyword 	epicsDbField	M N O P Q R S T U
syn keyword 	epicsDbField	FTA FTB FTC FTD FTE FTF FTG FTH FTI FTJ FTK FTL
syn keyword 	epicsDbField	FTM FTN FTO FTP FTQ FTR FTS FTT FTU
syn keyword 	epicsDbField	NOA NOB NOC NOD NOE NOF NOG NOH NOI NOJ NOK NOL
syn keyword 	epicsDbField	NOM NON NOO NOP NOQ NOR NOS NOT NOU
syn keyword 	epicsDbField	NEA NEB NEC NED NEE NEF NEG NEH NEI NEJ NEK NEL
syn keyword 	epicsDbField	NEM NEN NEO NEP NEQ NER NES NET NEU
syn keyword 	epicsDbField	OUTA OUTB OUTC OUTD OUTE OUTF OUTG OUTH OUTI
syn keyword 	epicsDbField	OUTJ OUTK OUTL OUTM OUTN OUTO OUTP OUTQ OUTR
syn keyword 	epicsDbField	OUTS OUTT OUTU
syn keyword 	epicsDbField	VALA VALB VALC VALD VALE VALF VALG VALH VALI
syn keyword 	epicsDbField	VALJ VALK VALL VALM VALN VALO VALP VALQ VALR
syn keyword 	epicsDbField	VALS VALT VALU
syn keyword 	epicsDbField	OVLA OVLB OVLC OVLD OVLE OVLF OVLG OVLH OVLI
syn keyword 	epicsDbField	OVLJ OVLK OVLL OVLM OVLN OVLO OVLP OVLQ OVLR
syn keyword 	epicsDbField	OVLS OVLT OVLU
syn keyword 	epicsDbField	FTVA FTVB FTVC FTVD FTVE FTVF FTVG FTVH FTVI
syn keyword 	epicsDbField	FTVJ FTVK FTVL FTVM FTVN FTVO FTVP FTVQ FTVR
syn keyword 	epicsDbField	FTVS FTVT FTVU
syn keyword 	epicsDbField	NOVA NOVB NOVC NOVD NOVE NOVF NOVG NOVH NOVI
syn keyword 	epicsDbField	NOVJ NOVK NOVL NOVM NOVN NOVO NOVP NOVQ NOVR
syn keyword 	epicsDbField	NOVS NOVT NOVU
syn keyword 	epicsDbField	NEVA NEVB NEVC NEVD NEVE NEVF NEVG NEVH NEVI
syn keyword 	epicsDbField	NEVJ NEVK NEVL NEVM NEVN NEVO NEVP NEVQ NEVR
syn keyword 	epicsDbField	NEVS NEVT NEVU
syn keyword 	epicsDbField	PORT ADDR PCNCT DRVINFO REASON SOCK TMOD TMOT
syn keyword 	epicsDbField	IFACE OCTETIV OPTIONIV GPIBIV I32IV UI32IV F64IV
syn keyword 	epicsDbField	AOUT OEOS BOUT OMAX NOWT NAWT OFMT
syn keyword 	epicsDbField	AINP TINP IEOS BINP IMAX NRRD NORD IFMT EOMR
syn keyword 	epicsDbField	I32INP I32OUT UI32INP UI32OUT UI32MASK
syn keyword 	epicsDbField	F64INP F64OUT
syn keyword 	epicsDbField	BAUD PRTY DBIT SBIT MCTL FCTL
syn keyword 	epicsDbField	UCMD ACMD SPR TMSP TB0 TB1 TB2 TB3 TB4
syn keyword 	epicsDbField	TIOM TIB0 TIB1 TIB2 TSIZ TFIL
syn keyword 	epicsDbField	AUCT CNCT ENBL ERRS AQR
syn keyword 	epicsDbField	VERS OFF FOFF FOF VOF DIR SET SSET SUSE
syn keyword 	epicsDbField	VELO VBAS VMAX S SBAS SMAX ACCL BDST BVEL
syn keyword 	epicsDbField	SBAK BACC FRAC CARD RDBL RLNK SREV UREV MRES
syn keyword 	epicsDbField	ERES RRES RES UEIP URIP HLM LLM DHLM DLLM
syn keyword 	epicsDbField	HLS LLS RHLS RLLS RDBD RCNT RTRY MISS SPMG
syn keyword 	epicsDbField	LSPG STOP HOMF HOMR JOGF JOGR TWF TWR TWV
syn keyword 	epicsDbField	LVAL DVAL LDVL LRVL RLV LRLV NMAP RMOD
syn keyword 	epicsDbField	PCOF ICOF DCOF CNEN INIT PREP POST STOO
syn keyword 	epicsDbField	RINP DINP JVEL JAR LOCK NTM NTMF HVEL STUP
syn keyword 	epicsDbField	INPV INPW INPX INPY INPZ V W X Y Z LV LW LX LY LZ
syn keyword 	epicsDbField	SMSG CMND ALRT MPTS EXSC XSC PXSC KILL WAIT
syn keyword 	epicsDbField	WCNT AWCT WTNG AWAIT AAWAIT DATA REFD NPTS
syn keyword 	epicsDbField	FPTS FFO CPT DPT PCPT PASM TOLP BSCD ASC
syn keyword 	epicsDbField	PAUS LPAU PDLY DDLY RDLY FAZE ACQM ACQT DSTATE

syn keyword 	epicsDbConstant	PP NPP MS NMS CP CPP CA
syn keyword 	epicsDbConstant	NO_ALARM MINOR MAJOR INVALID
syn keyword 	epicsDbConstant	DBF_STRING DBF_INT DBF_SHORT DBF_FLOAT DBF_ENUM
syn keyword 	epicsDbConstant	DBF_CHAR DBF_LONG DBF_DOUBLE DBF_NO_ACCESS
syn keyword 	epicsDbConstant	DBF_UCHAR DBF_USHORT DBF_ULONG

" EPICS comment
syn match	epicsDbComment	"^#.*$"
" syn match	epicsDbString	/"[^"]*"/

" String and Character constants

" Define the default highlighting.
hi def link epicsDbSttmnt	Statement
hi def link epicsDbType		Type
hi def link epicsDbField	Special
hi def link epicsDbConstant	PreProc
hi def link epicsDbString	String
hi def link epicsDbComment	Comment

let b:current_syntax = "epicsDb"

" vim: ts=8
" Vim syntax file
" Language:	EPICS SNL
" Maintainer:	Steve Lewis <salewis@computer.org>
" Last Change:	2010 Jun 18

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Include all of 'C'
:runtime! syntax/c.vim
:unlet b:current_syntax

" EPICS keywords
syn keyword	epicsSNLSttmnt	program ss state when entry exit option

syn keyword	epicsSNLType	assign monitor sync syncQ evflag string

syn keyword	epicsSNLFunc	delay pvPut pvPutComplete pvGet pvGetComplete
syn keyword	epicsSNLFunc	pvgetQ pvFreeQ pvMonitor pvStopMonitor
syn keyword	epicsSNLFunc	pvFlush pvCount pvStatus pvSeverity pvTimeStamp
syn keyword	epicsSNLFunc	pvAssign pvAssigned pvConnected pvIndex
syn keyword	epicsSNLFunc	pvChannelCount pvConnectCount
syn keyword	epicsSNLFunc	efSet efTest efClear efTestAndClear macValueGet

syn match	epicsSNLPreProc	"^%%#define "
syn match	epicsSNLPreProc	"^%%#include "

" String and Character constants

" Define the default highlighting.
hi def link epicsSNLSttmnt	Statement
hi def link epicsSNLType	Type
hi def link epicsSNLFunc	Special
hi def link epicsSNLConstant	Constant
hi def link epicsSNLPreProc	PreProc
hi def link epicsSNLString	String
hi def link epicsSNLComment	Comment

let b:current_syntax = "epicsSNL"

" vim: ts=8
" Vim syntax file
" Language:	EPICS Substitions
" Maintainer:	Steve Lewis <salewis@computer.org>
" Last Change:	2010 Jun 17

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" EPICS keywords
syn keyword	epicsSubKey	file pattern

" EPICS comment
syn match	epicsSubComment	"^#.*$"
syn match	epicsSubString	/"[^"]*"/

" String and Character constants

" Define the default highlighting.
hi def link epicsSubKey		Statement
hi def link epicsSubType	Type
hi def link epicsSubField	Type
hi def link epicsSubConstant	PreProc
hi def link epicsSubString	String
hi def link epicsSubComment	Comment

let b:current_syntax = "epicsSub"

" vim: ts=8

