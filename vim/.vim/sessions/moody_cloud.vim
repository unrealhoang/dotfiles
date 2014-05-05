" ~/.vim/sessions/moody_cloud.vim: Vim session script.
" Created by session.vim 1.5 on 14 April 2014 at 16:16:31.
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
cd ~/Workspace/Projects/Ruby/moody_cloud_server
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 Gemfile
badd +45 db/seeds.rb
badd +9 features/upload_songs.feature
badd +12 features/step_definitions/web_steps.rb
badd +1 features/step_definitions/email_steps.rb
badd +3 app/views/home/index.html.haml
badd +1 features/support/email_spec.rb
badd +1 app/uploaders/song_uploader.rb
badd +17 app/models/song.rb
badd +1 app/controllers/songs_controller.rb
badd +1 app/views/songs/new.html.haml
badd +1 app/views/songs/upload.html.haml
badd +6 config/routes.rb
badd +26 db/schema.rb
badd +8 db/migrate/20140117072919_create_songs.rb
badd +6 app/models/batch.rb
badd +29 app/controllers/batches_controller.rb
badd +10 app/views/batches/new_upload.html.haml
badd +1 app/views/batches/_form.html.haml
badd +1 app/views/batches/edit.html.haml
badd +4 db/migrate/20140117083559_add_artist_to_songs.rb
badd +1 app/views/batches/_song_fields.html.haml
badd +1 app/views/layouts/application.html.erb
badd +34 app/views/layouts/application.html.haml
badd +5 app/views/layouts/admin/_navigation.html.haml
badd +5 app/views/layouts/admin/_sidebar.html.haml
badd +49 app/assets/stylesheets/application.css
badd +1 app/assets/javascripts/application.js
badd +27 app/assets/javascripts/application.js.coffee
badd +1 config/initializers/simple_form_bootstrap.rb
badd +1 spec/factories/categories.rb
badd +3 app/models/category.rb
badd +1019 vendor/assets/stylesheets/style.css.scss
badd +30 vendor/assets/stylesheets/gallery.css
badd +1 app/views/songs/index.html
badd +1 app/views/songs/index.html.haml
badd +1 app/views/batches/new.html.haml
badd +8 app/assets/javascripts/songs.js.coffee
badd +5 app/views/songs/index.json.jbuilder
badd +1 app/views/songs/edit.html.haml
badd +1 app/assets/javascripts/common-scripts.js
badd +5 db/migrate/20140120044847_add_count_info_to_songs.rb
badd +65 app/assets/stylesheets/application.css.scss
badd +1703 vendor/assets/stylesheets/bootstrap.css.scss
badd +1 vendor/assets/libs/backgrid-ext/select-all/backgrid-select-all.js
badd +700 vendor/assets/javascripts/backgrid.js
badd +401 vendor/assets/libs/backgrid-ext/paginator/backgrid-paginator.js
badd +1143 vendor/assets/javascripts/backbone-pageable.js
badd +1 vendor/assets/stylesheets/backgrid.css
badd +1 vendor/assets/javascripts/backbone.js
badd +156 app/assets/javascripts/backgrid-custom.js.coffee
badd +1 vendor/assets/libs/backgrid-ext/filter/backgrid-filter.js
badd +1 app/models/photos.rb
badd +1 app/controllers/photo_controller.rb
badd +9 app/controllers/photos_controller.rb
badd +3 app/views/photos/index.html.haml
badd +50 app/assets/javascripts/photos.js.coffee
badd +40 app/uploaders/photo_uploader.rb
badd +12 app/views/photos/new_upload.html.haml
badd +1 app/models/photo.rb
badd +1 app/views/photos/form.html.haml
badd +1 app/views/photos/_photo_fields.html.haml
badd +3 app/views/photos/index.json.jbuilder
badd +1 vendor/assets/libs/bootstrap-wysihtml5/locales/bootstrap-wysihtml5.ko-KR.js
badd +10 config/deploy/production.rb
badd +10 config/deploy.rb
badd +0 config/application.yml
silent! argdel *
set lines=52 columns=162
edit app/controllers/songs_controller.rb
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
let s:l = 39 - ((38 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
39
normal! 0
tabedit config/deploy/production.rb
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
let s:l = 10 - ((9 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
tabedit db/seeds.rb
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
let s:l = 232 - ((25 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
232
normal! 03|
tabedit app/models/song.rb
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
let s:l = 41 - ((25 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
41
normal! 0
tabedit Gemfile
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
let s:l = 41 - ((33 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
41
normal! 0
tabnext 1
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

" vim: ft=vim ro nowrap smc=128
