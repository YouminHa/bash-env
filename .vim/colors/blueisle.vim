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

" Console / GUI
highlight Normal        ctermfg=White                                   guifg=LightBlue guibg=Black
highlight ColorColumn   ctermbg=DarkGray
highlight Comment       ctermfg=LightCyan                               guifg=LightCyan
highlight Cursor        ctermfg=Black   ctermbg=Green   cterm=bold      guifg=Black     guibg=Green     gui=bold
highlight PreProc       ctermfg=Cyan                                    guifg=Cyan
highlight Search        ctermfg=White   ctermbg=Red     cterm=NONE      guifg=Black     guibg=Red       gui=bold
highlight Special       ctermfg=Brown                                   guifg=Orange
highlight SpecialKey    ctermfg=DarkGray                                guifg=DarkGray
highlight Statement     ctermfg=Yellow                  cterm=NONE      guifg=Yellow                    gui=NONE
highlight StatusLine    ctermfg=Blue    ctermbg=White                   guifg=Blue      guibg=White
highlight Type                                          cterm=NONE                                      gui=NONE
highlight Visual                                        cterm=reverse   guifg=Grey25                    gui=bold

