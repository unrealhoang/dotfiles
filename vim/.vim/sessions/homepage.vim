" ~/.vim/sessions/homepage.vim: Vim session script.
" Created by session.vim 1.5 on 13 February 2014 at 00:54:02.
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
cd ~/Workspace/Projects/Ruby/homepage
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 source/index.html.haml
badd +8 source/partials/_navigation.html.haml
badd +52 source/partials/_contact.html.haml
badd +79 config.rb
badd +32 source/layouts/application.html.haml
badd +1 source/partials/_copyright.html.haml
badd +471 source/css/app.css
badd +27 source/css/custom.css
badd +8 source/partials/_navigation_index.html.haml
badd +165 source/js/scripts.js
badd +279 source/partials/_team.html.haml
badd +1 source/partials/_home.html.haml
badd +853 build/home-5.html
badd +223 source/partials/_portfolio.html.haml
badd +11 source/js/isotope.js
badd +200 source/projects/4_moodycloud.html
badd +29 source/projects/4-moodycloud.html.haml
badd +76 source/layouts/projects.html.haml
badd +100 source/projects/5_vongtay.html
badd +85 source/projects/1_cungmua.html
badd +68 source/projects/6_lg_photocontest.html
badd +111 source/projects/7_nozza.html
badd +1 source/partials/_clients.html.haml
badd +18 source/projects/1-cungmua.html.haml
badd +57 source/projects/2-hagome.html.haml
badd +68 source/projects/2_hagome.html
badd +68 source/projects/3_geekgame.html
badd +17 source/projects/3-geekgame.html.haml
badd +35 source/projects/5-vongtay.html.haml
badd +31 source/projects/7-nozza.html.haml
badd +34 source/projects/8-ef.html.haml
badd +30 source/projects/6-lg-photocontest.html.haml
badd +1 source/partials/_home2.html.haml
badd +1 build/css/supersized.shutter.css
badd +1 source/partials/_about_us.html.haml
badd +1 build/index.html
badd +1 ~/Downloads/favicon_052401/ReadMe.txt
badd +6 Gemfile
args ~/Downloads/favicon_052401/ReadMe.txt
set lines=52 columns=178
edit source/js/scripts.js
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
let s:l = 649 - ((46 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
649
normal! 020|
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/layouts/application.html.haml
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
let s:l = 32 - ((31 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 03|
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/index.html.haml
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
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/partials/_navigation_index.html.haml
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
let s:l = 23 - ((22 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 09|
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/partials/_navigation.html.haml
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
let s:l = 8 - ((7 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 09|
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/projects/5-vongtay.html.haml
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
let s:l = 35 - ((34 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 05|
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/partials/_about_us.html.haml
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
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/partials/_portfolio.html.haml
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
let s:l = 64 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
64
normal! 09|
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/projects/8-ef.html.haml
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
let s:l = 34 - ((8 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 059|
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/config.rb
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
let s:l = 74 - ((22 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
74
normal! 0
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/Gemfile
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
let s:l = 5 - ((4 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 015|
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/css/custom.css
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
let s:l = 27 - ((26 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 0
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/partials/_navigation.html.haml
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
let s:l = 8 - ((7 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 023|
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/index.html.haml
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
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/partials/_contact.html.haml
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
let s:l = 52 - ((49 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
52
normal! 0
lcd ~/Workspace/Projects/Ruby/homepage
tabedit ~/Workspace/Projects/Ruby/homepage/source/partials/_copyright.html.haml
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
let s:l = 7 - ((6 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 058|
lcd ~/Workspace/Projects/Ruby/homepage
tabnext 10
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
tabnext 10
1wincmd w

" vim: ft=vim ro nowrap smc=128
