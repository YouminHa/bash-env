" Vim color file
" Maintainer: blueisle
" grey on black
" optimized for TFT panels
" $Revision: 1.1 $

" set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "blueisle"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" GUI
highlight Normal     guifg=#f2f2f2	guibg=Black
highlight Search     guifg=Black	guibg=Red	gui=bold
highlight Visual     guifg=Grey25			    gui=bold
highlight Cursor     guifg=Black	guibg=Green	gui=bold
highlight Special    guifg=Orange
highlight Comment    guifg=LightCyan
highlight PreProc    guifg=Cyan
highlight StatusLine guifg=Blue		guibg=White
highlight Statement  guifg=Yellow			    gui=NONE
highlight Type						            gui=NONE

" Console
highlight Normal     ctermfg=White
highlight Search     ctermfg=Black	    ctermbg=Red	    cterm=NONE
highlight Visual					                    cterm=reverse
highlight Cursor     ctermfg=Black	    ctermbg=Green	cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=LightCyan
highlight PreProc    ctermfg=Cyan
highlight StatusLine ctermfg=Blue	    ctermbg=White
highlight Statement  ctermfg=Yellow			            cterm=NONE
highlight Type						                    cterm=NONE

" For vim < 6.0
if has("unix")
  if v:version<600
    highlight Normal  ctermfg=LightGrey	    ctermbg=Black	cterm=NONE	guifg=Grey80      guibg=Black	gui=NONE
    highlight Search  ctermfg=Black	    ctermbg=Red	    cterm=bold	guifg=Black       guibg=Red	    gui=bold
    highlight Visual  ctermfg=Black	    ctermbg=yellow	cterm=bold	guifg=Grey25	                gui=bold
    highlight Special ctermfg=White	                cterm=NONE	guifg=White                gui=NONE
    highlight Comment ctermfg=Cyan			            cterm=NONE  guifg=Cyan                gui=NONE
  endif
endif

