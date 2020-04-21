" ftplugin/cpp.vim 

if version >= 500
	func! Sts()
	let st = expand("<cword>")
	exe "sts ".st
	endfunc
	nmap ,st :call Sts()<cr>

	func! Tj()
	let st = expand("<cword>")
	exe "tj ".st
	endfunc
	nmap ,tj :call Tj()<cr>
endif


" ctags
set tags=./tags,./TAGS,tags,TAGS
set tags+=${HOME}/.vim/tags
set tags+=/usr/src/linux/tags,/usr/src/glib/tags,/usr/src/glibc/tags,/usr/include/tags
set tags+=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include/tags


" cscope
" http://vimdoc.sourceforge.net/htmldoc/if_cscop.html
set csprg=/usr/bin/cscope
set cscopetagorder=0	" search cscope before ctags
set cscopetag			" use :cstag instead of :tag
set nocsverb			" verbose off
if filereadable("./cscope.out")
	cs add cscope.out
endif
" cscope keyboard shortcuts
nmap <C-[>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-[>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-[>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" indentation
set cindent
set expandtab    " tab to space
set tabstop=2 softtabstop=2 shiftwidth=2

" macros
" ex) #b <space or tab> makes /***************************************
abbr #b /*********************************************************
abbr #e *********************************************************/


