" Python specific settings.

syntax on
setlocal autoindent
setlocal expandtab softtabstop=4 shiftwidth=4 tabstop=8
set formatoptions=croql
nmap <F5> :w <CR> :!clear; python3 % <CR>
nmap <F6> :w <CR> :!python3 % 
" set foldmethod=indent
let python_highlight_all=1

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
