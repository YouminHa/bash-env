" .vimrc

set number
set ruler                      "show location of curser on status bar
set tabstop=4
set shiftwidth=4               "Shift indent width"
set keywordprg=man\ -a         "command mapping (K --> man)
set smartindent
set cindent 
set autoindent
set noexpandtab
set list
set listchars=tab:.\ ,trail:`
set incsearch
set csprg=/usr/bin/cscope
set csto=0
set cst
set mouse=a
set nocsverb
set encoding=utf-8
set fileencodings=utf-8,euc-kr
set history=999
set wmnu
set lpl
set ic
set scs
set sc
set sm
set sel=exclusive
set backspace=indent,eol,start
"au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "norm g`\"" |
\ endif

"set tags+=~/young_v.vws/limo-kernel/buildroot/project_build_arm/Mirage/linux-2.6.21.1/tags

abbr #b /*********************************************************
abbr #e *********************************************************/

color blueisle

"if $LANG[0] == 'k' && $LANG[1] == 'o'
"set fileencoding=korea
"endif

if &t_Co > 2 || has("gui_running")
syntax on
set hlsearch
endif

if &term=="xterm"
set t_Co=8
set t_Sb=^[[4%dm
set t_Sf=^[[3%dm
endif

map ,1 :b!1<CR>
map ,2 :b!2<CR>
map ,3 :b!3<CR>
map ,4 :b!4<CR>
map ,5 :b!5<CR>
map ,6 :b!6<CR>
map ,7 :b!7<CR>
map ,8 :b!8<CR>
map ,9 :b!9<CR>
map ,0 :b!0<CR>
map ,w :b!bw<CR>

" turn off IME on command mode
"map <ESC> <ESC>:set imdisable<CR>
"nnoremap i :set noimd<CR>i
"nnoremap I :set noimd<CR>I
"nnoremap a :set noimd<CR>a
"nnoremap A :set noimd<CR>A
"nnoremap o :set noimd<CR>o
"nnoremap O :set noimd<CR>O    

" shortcuts
map <F1> v]}zf

" tab control
nnoremap <silent> <F2> :tabnew<CR>
nnoremap <silent> <F3> :tabprev<CR>
nnoremap <silent> <F4> :tabnext<CR>

" trinity
nnoremap <silent> <F5> :TagExplorer<CR>
nnoremap <silent> <F6> :BufExplorer<CR>
nnoremap <silent> <F7> :Tlist<CR>
nmap <F8> :TrinityToggleAll<CR>
nmap <F9> :TrinityToggleSourceExplorer<CR>
nmap <F10> :TrinityToggleTagList<CR>
nmap <F11> :TrinityToggleNERDTree<CR>

" Tlist options
let Tlist_Auto_Open = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "name"
let Tlist_Exit_OnlyWindow = 1
"let Tlist_Auto_Update = 1
"let Tlist_Ctags_Cmd = "mkctags.sh"
let Tlist_Display_Prototype = 0


filetype plugin on
