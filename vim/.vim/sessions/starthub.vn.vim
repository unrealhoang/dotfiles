" ~/.vim/sessions/starthub.vn.vim: Vim session script.
" Created by session.vim 1.5 on 24 March 2014 at 09:47:36.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrL
silent! set guifont=Menlo\ For\ Powerline
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'ir_black' | colorscheme ir_black | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Workspace/Starthub.vn/starthub-vn
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 src/starthub/api/src/main/webapp/assets/js/app/App.js
badd +1 src/starthub/api/src/main/webapp/assets/js/app/Dictionary.js
badd +1 src/starthub/api/src/main/webapp/assets/js/app/Router.js
badd +22 src/www/src/index.html
badd +15 src/www/src/assets/js/app/App.js
badd +1 src/www/src/assets/js/app/ServiceManager.js
badd +1 src/www/src/assets/js/app/views/ShellView.js
badd +48 docs/fe-architecture.md
badd +1 docs/credential.md
silent! argdel *
set lines=52 columns=173
edit src/www/src/assets/js/app/views/ShellView.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 86) / 173)
exe 'vert 2resize ' . ((&columns * 141 + 86) / 173)
argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 86) / 173)
exe 'vert 2resize ' . ((&columns * 141 + 86) / 173)
tabedit docs/fe-architecture.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 86) / 173)
exe 'vert 2resize ' . ((&columns * 141 + 86) / 173)
argglobal
enew
" file NERD_tree_2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 56 - ((44 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 0165|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 86) / 173)
exe 'vert 2resize ' . ((&columns * 141 + 86) / 173)
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
1wincmd w
let s:bufnr = bufnr("%")
NERDTree ~/Workspace/Starthub.vn
execute "bwipeout" s:bufnr
1resize 50|vert 1resize 31|2resize 50|vert 2resize 141|
tabnext 2
1wincmd w
let s:bufnr = bufnr("%")
NERDTree ~/Workspace/Starthub.vn/starthub-vn
execute "bwipeout" s:bufnr
1resize 50|vert 1resize 31|2resize 50|vert 2resize 141|
tabnext 2
2wincmd w

" vim: ft=vim ro nowrap smc=128
