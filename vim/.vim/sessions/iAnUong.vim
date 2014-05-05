" ~/.vim/sessions/iAnUong.vim: Vim session script.
" Created by session.vim 1.5 on 29 October 2012 at 00:03:04.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrLtT
silent! set guifont=Menlo\ Regular:h14
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'wombat' | colorscheme wombat | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Workspace/Projects/Ruby/iAnUong
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/config.ru
badd +1 ~/Gemfile
badd +48 config/application.rb
badd +1 db/seeds.rb
badd +1 ~/Public/robots.txt
badd +10 app/assets/javascripts/application.js
badd +17 features/support/env.rb
badd +1 app/views/places/create.html.haml
badd +1 app/views/places/new.html.haml
badd +32 app/views/places/_form.html.haml
badd +1 app/assets/stylesheets/application.css
badd +5 app/controllers/places_controller.rb
badd +3 app/assets/javascripts/places.js.coffee
badd +1 app/assets/javascripts/bootstrap.js.coffee
badd +26 app/views/layouts/application.html.haml
badd +1 app/views/places/index.html.haml
badd +1 app/assets/stylesheets/places.css.scss
badd +11 Gemfile
badd +4 db/migrate/20120828083831_create_reviews.rb
badd +3 app/models/review.rb
badd +18 app/views/reviews/_form.html.haml
badd +1 app/models/place.rb
badd +68 app/controllers/reviews_controller.rb
badd +2 db/migrate/20120821042017_create_places.rb
badd +5 Rakefile
badd +11 config/routes.rb
badd +22 app/views/reviews/index.html.haml
badd +2 app/views/reviews/new.html.haml
badd +3 app/views/reviews/edit.html.haml
badd +17 app/views/reviews/show.html.haml
badd +28 app/views/places/show.html.haml
badd +5 config/locales/en.yml
badd +1 app/helpers/places_helper.rb
badd +1 app/helpers/application_helper.rb
badd +4 db/migrate/20120829045747_create_tags.rb
badd +3 db/migrate/20120829_create_place_tags.rb
badd +1 app/models/tag.rb
badd +3 db/migrate/20120829_create_places_tags.rb
badd +1 db/migrate/20120830123253_add_photos.rb
badd +5 db/migrate/20120830130214_create_photos.rb
badd +2 app/models/photos.rb
badd +1 db/schema.rb
badd +7 db/migrate/20120914062035_add_details_to_place.rb
badd +1 config/initializers/omniauth.rb
badd +2 app/controllers/session_controller.rb
badd +5 config/environment.rb
badd +42 config/environments/test.rb
badd +1 db/development.sqlite3
badd +1 db/development_structure.sql
badd +1 config/database.yml
badd +18 config/environments/production.rb
badd +1 ~/Downloads/db.sql
badd +52 ~/Downloads/places.sql
badd +52 ~/Downloads/places(1).sql
badd +1 db/migrate/20120916062107_create_checkins.rb
badd +14 app/views/checkins/_form.html.haml
badd +1 app/models/checkin.rb
badd +46 app/controllers/checkins_controller.rb
badd +1 db/migrate/20120916073420_add_access_token_to_checkin.rb
badd +19 ~/Downloads/1k.sql
badd +1 ~/Downloads/2k.sql
badd +8 ~/Downloads/3k.sql
badd +13 config/environments/development.rb
silent! argdel *
set lines=48 columns=157
set fullscreen
edit app/views/places/index.html.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit app/controllers/checkins_controller.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 52 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
52
normal! 092l
tabedit app/controllers/places_controller.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 33 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 032l
tabedit db/schema.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 66 - ((35 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
66
normal! 023l
tabedit app/controllers/session_controller.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 029l
tabedit config/environment.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 031l
tabedit ~/Downloads/db.sql
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit app/views/checkins/_form.html.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 17 - ((16 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 033l
tabedit app/views/places/_form.html.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 32 - ((31 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 0
tabedit app/views/layouts/application.html.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 26 - ((25 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 010l
tabedit Gemfile
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
tabedit app/assets/javascripts/places.js.coffee
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
tabedit app/models/checkin.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 059l
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
