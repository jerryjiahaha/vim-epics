" Vim syntax file 
" Language: EPICS 
" Maintainer: Jerry Jia
" Latest Revision: 14 December 2015

if exists("b:current_syntax")
	finish
endif


"" For *.db *.dbd files

let b:current_syntax = "epics"

" Keywords
syn keyword recordKeyWords record field device include registrar

syn keyword fieldKeyWords  DESC FLNK SCAN DTYP VAL DOL PINI
syn keyword fieldKeyWords  INP OUT INPA INPB INPC LNK1 LNK2 LNK3 DOL1 DOL2 DOL3 OUTA OUTB OUTC OUTD OUTE OUTF OUTG OUTH
syn keyword fieldKeyWords  ESLO EOFF LINR CALC OOPT 
syn keyword fieldKeyWords  EGU PREC DRVL DRVH LOPR HOPR OMSL EVNT
syn keyword fieldKeyWords  ASG UAG HAG 
syn keyword fieldKeyWords  ZNAM ONAM MASK
syn keyword fieldKeyWords  NORD NELM FTVL
syn keyword fieldKeyWords  SELM SELL SELN 
syn keyword fieldKeyWords  SIMM SIOL SIML SVAL SIMS

syn keyword recordType ai ao bi bo stringin stringout longin longout calcout waveform seq fanout mbbi mbbo dfanout
syn keyword dblinkType CONSTANT PV_LINK


" Match
syn match quoted  "\".*\""
syn match comment "#.*$"


hi def link recordKeyWords PreProc
hi def link fieldKeyWords  Statement
hi def link recordType     Type
hi def link dblinkType     Type

hi def link comment        Comment
hi def link quoted         String

