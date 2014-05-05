" ~/.vim/sessions/mobifood.vim: Vim session script.
" Created by session.vim 1.5 on 25 January 2013 at 00:24:25.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrLtT
silent! set guifont=Menlo\ Regular:h13
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
cd ~/Workspace/Projects/Ruby/mobifood
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +2 app/helpers/home_helper.rb
badd +2 app/helpers/application_helper.rb
badd +1 app/controllers/home_controller.rb
badd +1 app/views/home/index.html.haml
badd +31 app/views/layouts/application.html.haml
badd +3 app/views/layouts/_navigation.html.haml
badd +5 config/routes.rb
badd +1 app/controllers/sessions_controller.rb
badd +1 config/initializers/session_store.rb
badd +1 app/models/user.rb
badd +1 app/controllers/users_controller.rb
badd +1 app/controllers/application_controller.rb
badd +40 ~/.rvm/gems/ruby-1.9.3-p194/gems/activerecord-3.1.0/lib/active_record/associations/collection_association.rb
badd +56 ~/.rvm/gems/ruby-1.9.3-p194/gems/activerecord-3.1.0/lib/active_record/associations/singular_association.rb
badd +11 db/migrate/20121024111223_create_places.rb
badd +20 app/views/places/_form.html.haml
badd +191 ~/src/rails/actionpack/lib/action_view/helpers/form_tag_helper.rb
badd +4 app/assets/javascripts/places.js.coffee
badd +11 app/assets/stylesheets/places.css.scss
badd +65 ~/src/rails/actionpack/lib/action_view/helpers/asset_tag_helper.rb
badd +1178 ~/src/rails/actionpack/lib/action_view/helpers/form_helper.rb
badd +1 app/assets/javascripts/application.js
badd +30 config/environments/development.rb
badd +1 ~/Gemfile
badd +12 config/initializers/inflections.rb
badd +1 db/migrate/20121024111224_create_detailed_info.rb
badd +1 spec/models/detailed_info_spec.rb
badd +1 app/models/detailed_info.rb
badd +1 app/controllers/detailed_info_controller.rb
badd +1 app/views/detailed_info/new.html.haml
badd +1 app/views/detailed_info/edit.html.haml
badd +49 app/views/detailed_info/show.html.haml
badd +1 app/views/detailed_info/_form.html.haml
badd +9 ~/src/rails/actionpack/lib/action_controller/model_naming.rb
badd +67 ~/src/rails/actionpack/test/activerecord/polymorphic_routes_test.rb
badd +948 ~/src/rails/actionpack/lib/action_dispatch/routing/mapper.rb
badd +1 app/models/place.rb
badd +1 app/views/layouts/_messages.html.haml
badd +13 app/assets/stylesheets/application.css.scss
badd +14 app/assets/stylesheets/application.css
badd +1 app/assets/stylesheets/scaffolds.css.scss
badd +14 app/assets/stylesheets/bootstrap_and_overrides.css.less
badd +20 public/assets/fontawesome-webfont-e03a2da63c3c6d17998251400bea197f.eot
badd +3 app/assets/stylesheets/home.css.scss
badd +59 app/controllers/detailed_infoes_controller.rb
badd +1 app/helpers/places_helper.rb
badd +1 db/migrate/20121026022224_create_places.rb
badd +1403 ~/src/rails/activerecord/lib/active_record/associations.rb
badd +16 Gemfile
badd +28 config/database.yml
badd +1 app/controllers/place_controller.rb
badd +26 config/application.rb
badd +56 app/assets/stylesheets/scaffolds.css.sass
badd +1 app/views/layouts/fixed.html.haml
badd +26 app/controllers/places_controller.rb
badd +35 config/environments/production.rb
badd +9 app/assets/stylesheets/application.css.sass
badd +10 app/assets/stylesheets/places.css.sass
badd +1 config/boot.rb
badd +169 ~/Downloads/Create.cshtml
badd +1 app/assets/javascripts/places/form.js.coffee
badd +1 app/models/photo.rb
badd +3 app/controllers/photos_controller.rb
badd +27 app/views/photos/index.html.haml
badd +20 app/views/photos/_form.html.haml
badd +1 app/views/photos/edit.html.haml
badd +21 app/views/photos/show.html.haml
badd +53 ~/src/rails/activerecord/lib/active_record/querying.rb
badd +8 db/schema.rb
badd +3 db/migrate/20121026032431_create_places.rb
badd +1 config.ru
badd +97 ~/src/rails/actionpack/lib/abstract_controller/rendering.rb
badd +13 app/assets/javascripts/application.js.coffee
badd +1 app/assets/javascripts/bootstrap.js.coffee
badd +22 db/development_structure.sql
badd +174 ~/src/rails/actionpack/lib/action_view/helpers/url_helper.rb
badd +7 config/environment.rb
badd +20 db/migrate/20121103092535_create_detailed_infoes.rb
badd +45 app/views/detailed_infoes/index.html.haml
badd +1 app/views/detailed_infoes/_form.html.haml
badd +1 app/views/detailed_infoes/show.html.haml
badd +20 app/views/places/index.html.haml
badd +9 db/migrate/20121103153242_create_comments.rb
badd +3 app/models/comment.rb
badd +37 app/controllers/comments_controller.rb
badd +27 app/views/places/show.html.haml
badd +1 app/views/detailed_infoes/new.html.haml
badd +1 ~/Downloads/kidcc\ tap\ 2.txt
badd +1 config/initializers/omniauth.rb
badd +1 config/initializers/date_time_json_format.rb
badd +1006 ~/Downloads/1k.sql
badd +1 db/migrate/20121106041508_create_users.rb
badd +11 db/migrate/20121028090838_create_photos.rb
badd +22 db/migrate/20121112151850_adv_search_psm.rb
badd +35 db/migrate/20121121202149_dist_from_loc_psm.rb
badd +1 config/initializers/helpers.rb
silent! argdel *
set lines=43 columns=155
edit config/environments/production.rb
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
let s:l = 61 - ((41 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
61
normal! 051l
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
let s:l = 6 - ((5 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
tabedit config/environments/production.rb
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
let s:l = 40 - ((39 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 02l
tabedit config/initializers/omniauth.rb
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
let s:l = 3 - ((2 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 056l
tabedit config/initializers/inflections.rb
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
let s:l = 11 - ((10 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
tabedit app/assets/stylesheets/scaffolds.css.sass
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
let s:l = 56 - ((37 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 0
tabedit app/views/detailed_infoes/_form.html.haml
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
let s:l = 56 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 04l
tabedit app/controllers/photos_controller.rb
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
let s:l = 3 - ((2 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
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
let s:l = 105 - ((35 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
105
normal! 0
tabedit app/models/place.rb
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
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit config/database.yml
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
let s:l = 28 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 02l
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
let s:l = 8 - ((7 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
tabedit config/initializers/helpers.rb
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
let s:l = 5 - ((4 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
tabedit app/models/place.rb
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
let s:l = 38 - ((37 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 015l
tabedit db/migrate/20121112151850_adv_search_psm.rb
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
let s:l = 42 - ((41 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 0
tabedit config/database.yml
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
let s:l = 6 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
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
