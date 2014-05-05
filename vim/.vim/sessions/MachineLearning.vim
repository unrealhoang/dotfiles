" ~/.vim/sessions/MachineLearning.vim: Vim session script.
" Created by session.vim 1.5 on 25 October 2013 at 03:30:12.
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
cd ~/Study/OnlineCourse/MachineLearning/ex
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +11 ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/warmUpExercise.m
badd +17 ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/computeCost.m
badd +122 ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/ex1.m
badd +0 ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/plotData.m
badd +35 ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/gradientDescent.m
badd +29 ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/featureNormalize.m
badd +18 ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/computeCostMulti.m
badd +19 ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/gradientDescentMulti.m
badd +86 ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/ex1_multi.m
badd +0 ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/normalEqn.m
silent! argdel *
set lines=51 columns=180
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
tabedit ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/warmUpExercise.m
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 11 - ((10 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 010l
tabedit ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/computeCost.m
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 17 - ((16 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 0
tabedit ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/gradientDescent.m
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 20 - ((19 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 0
tabedit ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/featureNormalize.m
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 29 - ((28 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 023l
tabedit ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/computeCostMulti.m
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 17 - ((16 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 020l
tabedit ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/gradientDescentMulti.m
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 11 - ((10 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
tabedit ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/normalEqn.m
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 14 - ((13 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 029l
tabedit ~/Study/OnlineCourse/MachineLearning/mlclass-ex1/mlclass-ex1/plotData.m
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 20 - ((19 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 0
tabnext 8
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
tabnext 8
1wincmd w

" vim: ft=vim ro nowrap smc=128
