" Vim syntax file 
" Language: EPICS 
" Maintainer: Jerry Jia
" Latest Revision: 14 December 2015

if exists("b:current_syntax")
	finish
endif

" Keywords
syn keyword recordKeyWords record field

syn keyword fieldKeyWords  DESC FLNK SCAN DTYP VAL DOL PINI
syn keyword fieldKeyWords  INP OUT INPA INPB
syn keyword fieldKeyWords  ESLO LINR CALC OOPT 
syn keyword fieldKeyWords  EGU PREC DRVL DRVH LOPR HOPR OMSL EVNT

syn keyword recordType ai ao bi bo stringin stringout longin longout calcout


" Match
syn match quoted  "\".*\""
syn match comment "#.*$"

let b:current_syntax = "epics"

hi def link recordKeyWords PreProc
hi def link fieldKeyWords  Statement
hi def link recordType     Type

hi def link comment        Comment
hi def link quoted         String

