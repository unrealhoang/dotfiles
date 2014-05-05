" ~/.vim/sessions/steps.vn.vim: Vim session script.
" Created by session.vim 1.5 on 03 January 2014 at 10:00:11.
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
cd ~/Workspace/Projects/Ruby/steps.vn
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +40 app/views/articles/_preview.html.haml
badd +19 app/views/articles/index.html.haml
badd +11 app/views/layouts/_footer.html.haml
badd +16 app/assets/javascripts/application.js.coffee
badd +34 app/assets/stylesheets/application.css.scss
badd +2060 app/assets/stylesheets/main.css.sass
badd +2 vendor/assets/javascripts/main.js
badd +1 app/assets/stylesheets/font.css.scss
badd +13 vendor/assets/stylesheets/font-awesome.css
badd +1 app/assets/stylesheets/home.css.scss
badd +282 app/assets/stylesheets/reset.css.scss
badd +1203 vendor/assets/stylesheets/font-awesome-ie7.css
badd +1 vendor/assets/javascripts/jquery.isotope.js
badd +1 /private/var/folders/gw/x_194lbs6f36jcqxr7b79jlr0000gn/T/TemporaryItems/ai13708602741.tmp/ai13708602741.txt
badd +1 app/views/layouts/admin.html.haml
badd +1 app/controllers/admin/dashboard_controller.rb
badd +1 app/views/devise/shared/_links.erb
badd +1 app/views/layouts/devise.html.haml
badd +1 app/views/devise/sessions/new.html.haml
badd +15 config/initializers/devise.rb
badd +45 config/application.rb
badd +10 Gemfile
badd +257 Gemfile.lock
badd +142 config/initializers/simple_form.rb
badd +3 app/controllers/admin/authors_controller.rb
badd +14 app/models/article.rb
badd +45 app/views/admin/articles/_form.html.haml
badd +22 app/views/admin/articles/index.html.haml
badd +1 app/helpers/admin/articles_helper.rb
badd +75 app/controllers/admin/articles_controller.rb
badd +3 app/controllers/admin/categories_controller.rb
badd +6 app/assets/javascripts/admin/main.js.coffee
badd +1 app/helpers/upload_helper.rb
badd +38 app/assets/javascripts/admin/direct_upload.js.coffee
badd +40 app/views/admin/authors/_form.html.haml
badd +1 config/application.yml
badd +1 app/models/category.rb
badd +3 app/helpers/articles_helper.rb
badd +68 Capfile
badd +1 config/deploy.rb
badd +1 app/helpers/application_helper.rb
badd +1 app/views/layouts/_navigation.html.haml
badd +1 app/views/layouts/admin/_navigation_phone.html.haml
badd +1 app/views/layouts/admin/_navigation_desktop.html.haml
args /private/var/folders/gw/x_194lbs6f36jcqxr7b79jlr0000gn/T/TemporaryItems/ai13708602741.tmp/ai13708602741.txt
set lines=46 columns=178
edit app/views/articles/index.html.haml
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
let s:l = 19 - ((18 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 015|
tabedit app/assets/stylesheets/application.css.scss
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
let s:l = 32 - ((0 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 036|
tabedit app/assets/javascripts/application.js.coffee
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
let s:l = 20 - ((19 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 0
tabedit app/assets/javascripts/admin/main.js.coffee
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
let s:l = 6 - ((5 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
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
let s:l = 10 - ((9 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
tabedit app/helpers/upload_helper.rb
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
let s:l = 1 - ((0 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit app/assets/javascripts/admin/direct_upload.js.coffee
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
let s:l = 38 - ((37 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 0
tabedit app/controllers/admin/authors_controller.rb
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
let s:l = 48 - ((0 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
48
normal! 0
tabedit config/application.yml
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
let s:l = 1 - ((0 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 9
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
tabnext 9
1wincmd w

" vim: ft=vim ro nowrap smc=128
