" .vimrc

""" general vim options
" http://vimdoc.sourceforge.net/htmldoc/options.html

" interface
set number						" show line numbers
set ruler						" show location of curser on status bar
set visualbell					" visual bell on error
set showmode					" show current mode in the last line
set showcmd						" show command in the last line

" indent
set autoindent					" automatic indent
set tabstop=8 softtabstop=8 shiftwidth=8  " Shift indent width
set noexpandtab					" don't change tab to space

" whitespaces
set list						" show whitespaces with special chars
set listchars=tab:⇥\ ,trail:°	" whitespace-replacing characters

" search
set incsearch					" incremental search when using /{keyword}
set ignorecase					" case-insensitive search
set smartcase					" override ignorecase when search keyword contains uppercase chararcters
set hlsearch					" highlight previous search pattern

" editor
set selection=inclusive			" visual selection includes the cursor character
set history=999					" rollback history
set showmatch					" show matched brackets
set backspace=indent,eol,start	" backspace allowing
set mouse=a						" mouse mode: use all modes
set keywordprg=man\ -a			" command mapping (shift+K --> man)
set wildmenu					" use tab to explore candidates in command mode
set wildmode=longest:list,full	" wildmenu mode

" other options
set encoding=utf-8
set fileencodings=utf-8,euc-kr
set loadplugins					" load plugins

"au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" set cursor position to the last-changed place
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "norm g`\"" |
\ endif

" color scheme
color blueisle

"if $LANG[0] == 'k' && $LANG[1] == 'o'
"set fileencoding=korea
"endif

if &t_Co > 2 || has("gui_running")
	syntax on
endif

" 8 color xterm setting
if &term=="xterm"
set t_Co=8		" 8 colors
set t_Sb=^[[4%dm
set t_Sf=^[[3%dm
endif


" turn off IME on command mode
"map <ESC> <ESC>:set imdisable<CR>
"nnoremap i :set noimd<CR>i
"nnoremap I :set noimd<CR>I
"nnoremap a :set noimd<CR>a
"nnoremap A :set noimd<CR>A
"nnoremap o :set noimd<CR>o
"nnoremap O :set noimd<CR>O    

""" hotkeys
map <F1> v]}zf

" buffer hotkeys
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

" tab control hotkeys
nnoremap <silent> <F2> :tabnew<CR>
nnoremap <silent> <F3> :tabprev<CR>
nnoremap <silent> <F4> :tabnext<CR>

" trinity hotkeys
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
