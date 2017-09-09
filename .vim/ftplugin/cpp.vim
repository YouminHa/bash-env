" ftplugin/cpp.vim 

" tags set
set tags=./tags,../tags,../../tags,../../../tags,../../../../tags,../../../../../tags
set tags+=${PWD}/tags
set tags+=${HOME}/.vim/tags
set tags+=/usr/src/linux/tags,/usr/src/glib/tags,/usr/src/glibc/tags,/usr/include/tags
set tags+=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include/tags


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


" cscope

if filereadable("./cscope.out")
cs add cscope.out
endif
set csverb

nmap <C-[>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-[>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-[>d :cs find d <C-R>=expand("<cword>")<CR><CR>

