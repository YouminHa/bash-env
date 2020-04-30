" .vimrc

""" general vim options
" http://vimdoc.sourceforge.net/htmldoc/options.html

" interface
set number                                      " show line numbers
set ruler                                       " show location of curser on status bar
set showcmd                                     " show command in the last line
set showmode                                    " show current mode in the last line
set visualbell                                  " visual bell on error

" indent
set autoindent                                  " automatic indent
"set smartindent                                " not used usually (should be set with autoindent)
set noexpandtab                                 " don't change tab to space
set tabstop=8 softtabstop=8 shiftwidth=8        " Shift indent width

" whitespaces
set list                                        " show whitespaces with special chars
set listchars=tab:⇥\ ,trail:˽                   " whitespace-replacing characters

" search
set hlsearch                                    " highlight previous search pattern
set incsearch                                   " incremental search when using /{keyword}
set ignorecase                                  " case-insensitive search
set smartcase                                   " override ignorecase when search keyword contains uppercase chararcters

" editor
set backspace=indent,eol,start                  " backspace allowing
set history=999                                 " rollback history
set keywordprg=man\ -a                          " command mapping (shift+K --> man)
set mouse=a                                     " mouse mode: use all modes
set selection=inclusive                         " visual selection includes the cursor character
set showmatch                                   " show matched brackets
set wildmenu                                    " use tab to explore candidates in command mode
set wildmode=longest:list,full                  " wildmenu mode

" other options
set encoding=utf-8
set fileencodings=utf-8
set loadplugins                                 " load plugins

" set cursor position to the last-changed place
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "norm g`\"" |
\ endif

" enable filetype detection
filetype indent plugin on
syntax on

" set tags
set tags=./tags;../tags;../../tags;../../../tags;../../../../tags

""" custom keymaps
" include-search shortcut
nnoremap <C-i> [<C-i>

""" color scheme
color onehalfdark


""" vim-plug plugins
" Run :PlugInstall to install specified plugins
" More info: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plug')
Plug 'airblade/vim-gitgutter'                   " show git changed lines left on the line number
Plug 'ludovicchabant/vim-gutentags'             " make tags automatically
Plug 'majutsushi/tagbar'                        " ctags info (like taglist)
Plug 'scrooloose/nerdtree'                      " nerdtree file explorer
Plug 'Xuyuanp/nerdtree-git-plugin'              " nerdtree git plugin
Plug 'scrooloose/syntastic'                     " show syntax error
Plug 'tpope/vim-fugitive'                       " git wrapper
Plug 'vim-airline/vim-airline'                  " beautify status bar
Plug 'jlanzarotta/bufexplorer'                  " buffer explorer (recent opened files)
call plug#end()

""" plugin setup
" [vim-airline]
"let g:airline_powerline_fonts = 1              " Use powerline fonts (only works with truetype fonts)
let airline#extensions#tabline#disable_refresh = 0
" [nerdtree]
nnoremap <F7> :NERDTreeToggle<CR>
let g:NERDTreeShowIgnoredStatus = 1
" [tagbar]
nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-k> :TagbarOpenAutoClose<CR>
"autocmd VimEnter * nested :call tagbar#autoopen(1)      " auto open with supported file type
let g:tagbar_zoomwidth = 0                      " when zoomed, fit the width to the longest tag
" [bufexplorer]
nnoremap <silent> <F9> :BufExplorer<CR>

