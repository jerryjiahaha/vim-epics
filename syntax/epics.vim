" Vim syntax file 
" Language: EPICS 
" Maintainer: Jerry Jia
" Latest Revision: 14 December 2015

if exists("b:current_syntax")
	finish
endif


"" For *.db *.dbd files

" Keywords
syn keyword recordKeyWords record field device include registrar driver

syn keyword fieldKeyWords  DESC FLNK SCAN DTYP VAL  PINI DOL  ODLY
syn keyword fieldKeyWords  INP  INPA INPB INPC INPD INPE INPF INPG INPH INPI INPJ INPK INPL
syn keyword fieldKeyWords  OUT  OUTA OUTB OUTC OUTD OUTE OUTF OUTG OUTH OUTI OUTJ
syn keyword fieldKeyWords  DLY1 DLY2 DLY3 DLY4 DLY5 DLY6 DLY7 DLY8 DLY9 DLYA
syn keyword fieldKeyWords  DOL1 DOL2 DOL3 DOL4 DOL5 DOL6 DOL7 DOL8 DOL9 DOLA
syn keyword fieldKeyWords  LNK1 LNK2 LNK3 LNK4 LNK5 LNK6 LNK7 LNK8 LNK9 LNKA
syn keyword fieldKeyWords  ESLO EOFF LINR CALC OOPT DOPT OCAL
syn keyword fieldKeyWords  EGU  PREC DRVL DRVH LOPR HOPR OMSL EVNT
syn keyword fieldKeyWords  ASG  UAG  HAG
syn keyword fieldKeyWords  ZNAM ONAM MASK
syn keyword fieldKeyWords  NORD NELM FTVL
syn keyword fieldKeyWords  SELM SELL SELN
syn keyword fieldKeyWords  SIMM SIOL SIML SVAL SIMS
syn keyword fieldKeyWords  HIHI LOLO HIGH LOW  HHSV LLSV HSV LSV
syn keyword fieldKeyWords  INAM SNAM FTA  NOA
syn keyword fieldKeyWords  MALM INDX
syn keyword fieldKeyWords  ZRVL ONVL TWVL THVL FRVL FVVL SXVL SVVL EIVL NIVL TEVL ELVL TVVL TTVL FTVL FFVL
syn keyword fieldKeyWords  ZRST ONST TWST THST FRST FVST SXST SVST EIST NIST TEST ELST TVST TTST FTST FFST

syn keyword recordType ai ao bi bo stringin stringout longin longout calcout waveform seq fanout mbbi mbbo dfanout calc sub aSub aai aao subArray event
syn keyword dblinkType CONSTANT PV_LINK INST_IO


" Match
syn match quoted  "\".*\""
syn match comment "#.*$"


hi def link recordKeyWords PreProc
hi def link fieldKeyWords  Statement
hi def link recordType     Type
hi def link dblinkType     Type

hi def link comment        Comment
hi def link quoted         String

"let b:current_syntax = "epics"


"" For SNL *.st *.stt files

"if exists("b:current_syntax")
"	finish
"endif
:runtime! syntax/c.vim
:unlet b:current_syntax
" Keywords
syn keyword epicsSNLSttmnt program ss state assign to when monitor sync syncq option evflag entry exit
syn keyword epicsSNLFunction channel delay pvPut pvPutComplete pvArrayPutComplete pvPutCancel pvArrayPutCancel pvGet pvGetComplete pvArrayGetComplete
syn keyword epicsSNLFunction pvConnectCount efClear efSet efTest efTestAndClear pvChannelCount
syn keyword epicsSNLConstant TRUE FALSE

hi def link epicsSNLSttmnt Statement
hi def link epicsSNLFunction PreProc
hi def link epicsSNLConstant Constant

let b:current_syntax = "epicsSNL"
