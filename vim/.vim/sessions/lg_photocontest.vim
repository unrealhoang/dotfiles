" ~/.vim/sessions/lg_photocontest.vim: Vim session script.
" Created by session.vim 1.5 on 20 January 2014 at 11:05:38.
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
call setqflist([{'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//2491c68619b116a23679061e58957f540146a05e', 'text': 'precompile'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//880c4e997920ad338241c3fabc1203b19a67b08b', 'text': 'javascript for winner'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//83616d33f4ed4f4455e934a3f586e92bc7308d12', 'text': 'fix some'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//1e8da10c1b9016109c851ccdc0cb144fd57a4a7c', 'text': 'entire winner system'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//e1fd966fb64292b1c31088bee718f4918be691d5', 'text': 'fix'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//3768498771c229882a827ae9074780785241aec3', 'text': 'handle hover'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//64bab135ba4b0a016fb9347df5eec6f600aa7f18', 'text': 'fix'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//258cb6811c573dda7bd6775f7edb0afe4bd92395', 'text': '810'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//ba8e596c0cb8dac04b5bc1fa0c072d883742e2b2', 'text': 'fix conflict'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//b89adf20a48231ee9f1ebe9f48b726f3b69d5c30', 'text': 'fix voted'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//c7bfcc9eba5a626d74f01ae3412d53682d61d4a4', 'text': 'fix'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//3192474afb4ca97a0f726c591bcfc4a886edab50', 'text': 'fix arrow show when hover only'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//0e70cef79360ff8d62a632907a3624285374e7e9', 'text': 'fix scroll feature'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//e2b1ba9de13d309f8b418ae6b35cff7abfe5ac7f', 'text': 'add image, fix'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//35238bb2ecac674ab0aa9fa6c7d3a606ac45878d', 'text': 'fix feature'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//e7e15b288c140b4f76e6eb99cdcca406fec68b87', 'text': 'styling upload page'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'fugitive:///Users/unreal/Workspace/Projects/Ruby/lg_photocontest/.git//3637acf91617f2017676813ba9b9d305aacd4e7e', 'text': 'apply new layout, change locale'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Workspace/Projects/Ruby/lg_photocontest
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +48 app/assets/javascripts/home.js.coffee
badd +2 config/environment.rb
badd +209 app/assets/javascripts/application.js.coffee.erb
badd +1 ~/Downloads/report.csv
badd +44 config/application.yml
badd +38 app/models/user.rb
badd +6 db/migrate/20130602095201_add_confirmable_to_users.rb
badd +1 app/views/users/mailer/confirmation_instructions.html.erb
badd +91 config/initializers/devise.rb
badd +9 vendor/assets/javascripts/jquery.transit.min.js
badd +358 app/assets/javascripts/albums.js.coffee.erb
badd +2073 app/assets/stylesheets/application.css.scss
badd +11 app/views/albums/_category_thumbs.html.haml
badd +14 db/schema.rb
badd +78 config/application.rb
badd +69 config/environments/production.rb
badd +1 db/migrate/20130503043704_category_id_not_null.rb
badd +85 app/views/albums/show.html.haml
badd +54 app/models/photo.rb
badd +1 app/models/album.rb
badd +1 app/views/albums/new.html.haml
badd +1 app/views/albums/_form.html.haml
badd +66 app/controllers/albums_controller.rb
badd +767 ~/Downloads/report\ (1).csv
badd +581 vendor/assets/javascripts/jquery.slides.js.coffee
badd +178 app/assets/stylesheets/home.css.scss
badd +16 app/views/admin/albums/_form.html.haml
badd +30 app/views/home/winner.html.haml
badd +273 app/assets/stylesheets/albums.css.scss
badd +1 app/admin/albums.rb
badd +25 html/Res/js/album.js
badd +1 app/views/layouts/application.html.haml
badd +59 config/database.yml
badd +1 app/helpers/application_helper.rb
badd +14 app/helpers/albums_helper.rb
badd +1 ~/Downloads/down_3.txt
badd +1 ~/Downloads/down_2.txt
badd +31 app/controllers/users/registrations_controller.rb
badd +270 config/locales/vi.yml
badd +159 ~/Downloads/crop_2.txt
badd +61 ~/Downloads/crop_3.txt
badd +159 ~/Downloads/crop_22.txt
badd +1 ~/Downloads/crop_23.txt
badd +1 ~/Downloads/down.txt
badd +342 ~/Downloads/crop.txt
badd +1 app/mailers/user_mailer.rb
badd +1 app/views/user_mailer/approve_album.html.erb
badd +1 ~/Downloads/Adobe\ CS3\ Design\ Premium\ OSX/cs3OSX.nfo
badd +31 app/views/home/index.html.haml
badd +1 ~/.bash_history
badd +1 ~/.bash_profile
badd +1 app/views/home/_winner_thumbs.html.haml
badd +36 app/controllers/home_controller.rb
badd +1 app/models/album_award.rb
badd +1 signature.html
badd +71 ~/AppSource/nginx_conf_resize_cache_img
badd +1 app/models/category.rb
args ~/Downloads/Adobe\ CS3\ Design\ Premium\ OSX/cs3OSX.nfo
set lines=51 columns=178
edit config/application.yml
set splitbelow splitright
set nosplitbelow
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
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit config/application.rb
set splitbelow splitright
set nosplitbelow
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
let s:l = 78 - ((32 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
78
normal! 0
tabedit app/views/home/index.html.haml
set splitbelow splitright
set nosplitbelow
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
let s:l = 32 - ((31 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 05|
tabedit app/assets/javascripts/home.js.coffee
set splitbelow splitright
set nosplitbelow
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
let s:l = 53 - ((40 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 0
tabedit config/database.yml
set splitbelow splitright
set nosplitbelow
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
let s:l = 59 - ((36 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
59
normal! 0
tabedit app/views/home/index.html.haml
set splitbelow splitright
set nosplitbelow
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
let s:l = 31 - ((30 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 07|
tabedit app/assets/javascripts/application.js.coffee.erb
set splitbelow splitright
set nosplitbelow
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
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit app/views/home/winner.html.haml
set splitbelow splitright
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
6
normal! zo
7
normal! zo
24
normal! zo
25
normal! zo
26
normal! zo
27
normal! zo
27
normal! zc
let s:l = 73 - ((67 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
73
normal! 071|
tabedit app/controllers/home_controller.rb
set splitbelow splitright
set nosplitbelow
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
let s:l = 36 - ((6 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 0
tabedit app/models/category.rb
set splitbelow splitright
set nosplitbelow
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
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit app/models/album.rb
set splitbelow splitright
set nosplitbelow
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
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit app/models/category.rb
set splitbelow splitright
set nosplitbelow
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
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit app/views/home/_winner_thumbs.html.haml
set splitbelow splitright
set nosplitbelow
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
let s:l = 6 - ((5 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 010|
tabedit app/assets/stylesheets/application.css.scss
set splitbelow splitright
set nosplitbelow
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
let s:l = 2331 - ((45 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2331
normal! 014|
tabnext 7
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
tabnext 7
1wincmd w

" vim: ft=vim ro nowrap smc=128
