" ~/.vim/sessions/cold_deal.vim: Vim session script.
" Created by session.vim 1.5 on 28 March 2014 at 02:05:27.
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
call setqflist([{'lnum': 1, 'col': 7, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/jobs/return_money_job.rb', 'text': 'class ReturnMoneyJob'}, {'lnum': 56, 'col': 34, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/services/session_rating_service.rb', 'text': '      Backburner::Worker.enqueue ReturnMoneyJob, [:lock, @user, BALANCE_LOCK_AMOUNT / 2, "transaction.rated #{trans.id}"], :delay => sec_diff'}, {'lnum': 56, 'col': 34, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/services/session_sharing_service.rb', 'text': '      Backburner::Worker.enqueue ReturnMoneyJob, [:lock, @user, BALANCE_LOCK_AMOUNT / 2, "transaction.shared #{trans.id}"], :delay => sec_diff'}, {'lnum': 302, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/unreal/tags', 'text': 'ReturnMoneyJob	app/jobs/return_money_job.rb	/^class ReturnMoneyJob$/;"	c'}, {'lnum': 1144, 'col': 97, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/unreal/tags', 'text': 'perform	app/jobs/return_money_job.rb	/^  def self.perform(from, to, amount, reason)$/;"	F	class:ReturnMoneyJob'}, {'lnum': 1168, 'col': 85, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/unreal/tags', 'text': 'queue_priority	app/jobs/return_money_job.rb	/^  def self.queue_priority$/;"	F	class:ReturnMoneyJob'}, {'lnum': 1175, 'col': 99, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/unreal/tags', 'text': 'queue_respond_timeout	app/jobs/return_money_job.rb	/^  def self.queue_respond_timeout$/;"	F	class:ReturnMoneyJob'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Workspace/Projects/Ruby/cold_deal
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +11 app/helpers/application_helper.rb
badd +73 app/models/deal_transaction.rb
badd +57 db/schema.rb
badd +1 app/views/api/v1/products/_product.json.jbuilder
badd +19 app/controllers/api/v1/sms_confirmations_controller.rb
badd +1 app/views/api/v1/tokens/create.json.jbuilder
badd +1 ~/Workspace/Android/Hagome/src/me/hago/base/BaseActivity.java
badd +25 app/models/s3_uploader.rb
badd +77 config/routes.rb
badd +1 app/models/exchange.rb
badd +1 app/controllers/admin/users_controller.rb
badd +135 app/models/session.rb
badd +25 app/services/session_sharing_service.rb
badd +7 app/jobs/return_money_job.rb
badd +58 app/services/session_rating_service.rb
badd +5 app/controllers/api/v1/images_controller.rb
badd +2 app/views/api/v1/images/upload_params.json.jbuilder
badd +94 app/models/catalog.rb
badd +1 app/models/user.rb
badd +26 app/views/admin/dashboard/show.html.haml
badd +10 app/controllers/admin/dashboard_controller.rb
badd +31 app/controllers/admin/report_controller.rb
badd +101 app/views/admin/report/show.html.haml
badd +5 app/views/admin/audits/index.html.haml
badd +92 app/controllers/admin/audits_controller.rb
badd +1 app/models/balance_audit.rb
badd +8 app/views/admin/audits/report.html.haml
badd +40 config/locales/vi.yml
badd +4 app/views/admin/users/index.html.haml
badd +31 app/views/api/v1/sessions/_session.json.jbuilder
badd +243 spec/requests/api_catalog_spec.rb
badd +108 app/controllers/api/v1/sessions_controller.rb
badd +73 app/services/session_offers_service.rb
badd +1 app/views/admins/show.html.haml
badd +1 app/views/api/v1/sessions/show.json.jbuilder
badd +150 app/models/notification.rb
badd +1 app/models/notifier.rb
badd +8 app/jobs/send_notification_job.rb
badd +1 app/models/ios_notifier.rb
badd +3 config/initializers/apns.rb
badd +1 app/views/admin/categories/_form.html.haml
badd +1 config/application.rb
badd +11 app/assets/stylesheets/admin/main.css.scss
badd +1 app/assets/stylesheets/admin/icomoon.css.scss
badd +11 vendor/assets/stylesheets/font-awesome.css.scss
badd +1203 vendor/assets/stylesheets/font-awesome-ie7.css
args ~/Workspace/Android/Hagome/src/me/hago/base/BaseActivity.java
set lines=50 columns=162
edit app/helpers/application_helper.rb
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
let s:l = 22 - ((21 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
tabedit app/models/ios_notifier.rb
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
let s:l = 1 - ((0 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit config/initializers/apns.rb
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
let s:l = 3 - ((2 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 014|
tabedit config/application.rb
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
let s:l = 1 - ((0 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 4
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
tabnext 4
1wincmd w

" vim: ft=vim ro nowrap smc=128
