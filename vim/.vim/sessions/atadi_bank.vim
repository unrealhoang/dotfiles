" ~/.vim/sessions/atadi_bank.vim: Vim session script.
" Created by session.vim 1.5 on 24 February 2014 at 15:03:53.
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
call setqflist([{'lnum': 1, 'col': 3, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/transaction.rb', 'text': '# Transactions are the recording of debits and credits to various accounts.'}, {'lnum': 15, 'col': 27, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/transaction.rb', 'text': '#   transaction = Plutus::Transaction.new(:description => "Receiving payment on an invoice")'}, {'lnum': 23, 'col': 7, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/transaction.rb', 'text': 'class Transaction < ActiveRecord::Base'}, {'lnum': 39, 'col': 29, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/transaction.rb', 'text': '  #   transaction = Plutus::Transaction.build('}, {'lnum': 47, 'col': 22, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/transaction.rb', 'text': '  # @return [Plutus::Transaction] A Transaction with built credit and debit objects ready for saving'}, {'lnum': 49, 'col': 19, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/transaction.rb', 'text': '    transaction = Transaction.new(:description => hash[:description], :commercial_document => hash[:commercial_document])'}, {'lnum': 63, 'col': 25, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/transaction.rb', 'text': '      errors[:base] << "Transaction must have at least one credit amount" if self.credit_amounts.blank?'}, {'lnum': 67, 'col': 25, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/transaction.rb', 'text': '      errors[:base] << "Transaction must have at least one debit amount" if self.debit_amounts.blank?'}, {'lnum': 689, 'col': 12, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'log/test.log', 'text': '  [1m[36mTransaction Load (1.1ms)[0m  [1mSELECT "transactions".* FROM "transactions" WHERE "transactions"."id" = $1 ORDER BY "transactions"."id" ASC LIMIT 1[0m  [["id", 1]]'}, {'lnum': 691, 'col': 12, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'log/test.log', 'text': '  [1m[36mTransaction Load (0.4ms)[0m  [1mSELECT "transactions".* FROM "transactions" WHERE "transactions"."id" = $1 ORDER BY "transactions"."id" ASC LIMIT 1[0m  [["id", 1]]'}, {'lnum': 693, 'col': 12, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'log/test.log', 'text': '  [1m[36mTransaction Load (0.4ms)[0m  [1mSELECT "transactions".* FROM "transactions" WHERE "transactions"."id" = $1 ORDER BY "transactions"."id" ASC LIMIT 1[0m  [["id", 1]]'}, {'lnum': 696, 'col': 12, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'log/test.log', 'text': '  [1m[35mTransaction Load (0.5ms)[0m  SELECT "transactions".* FROM "transactions" WHERE "transactions"."id" = $1 LIMIT 1  [["id", 1]]'}, {'lnum': 2, 'col': 35, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/transaction_factory.rb', 'text': '  factory :transaction, :class => Transaction do |transaction|'}, {'lnum': 5, 'col': 59, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/transaction_factory.rb', 'text': '    factory :transaction_with_credit_and_debit, :class => Transaction do |transaction_cd|'}, {'lnum': 3, 'col': 10, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/transaction_spec.rb', 'text': 'describe Transaction do'}, {'lnum': 66, 'col': 25, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/transaction_spec.rb', 'text': '    saved_transaction = Transaction.find(transaction.id)'}, {'lnum': 75, 'col': 19, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/transaction_spec.rb', 'text': '    transaction = Transaction.build('}, {'lnum': 85, 'col': 25, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/transaction_spec.rb', 'text': '    saved_transaction = Transaction.find(transaction.id)'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Workspace/Projects/Ruby/atadi_bank
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +21 Gemfile
badd +20 config/database.yml
badd +1 Guardfile
badd +1 Procfile
badd +1 config/initializers/database_connection.rb
badd +16 lib/tasks/worker.rake
badd +1 app/worker/banking_worker.rb
badd +12 spec/jobs/dispatcher_spec.rb
badd +11 config/application.yml
badd +1 app/jobs/dispatcher.rb
badd +1 app/jobs/jobs/dispatcher.rb
badd +41 spec/spec_helper.rb
badd +18 config/application.rb
badd +10 app/workers/jobs/dispatcher.rb
badd +9 app/workers/jobs/runner/say_hello.rb
badd +36 config/environments/test.rb
badd +25 app/workers/jobs/runner/create_account.rb
badd +71 spec/jobs/runner/create_account_spec.rb
badd +1 app/models/plutus/asset.rb
badd +8 lib/logging.rb
badd +1 app/serializers/plutus/account_serializer.rb
badd +1 app/workers/app_worker.rb
badd +2 app/workers/return_queue.rb
badd +1 spec/jobs/app_worker_spec.rb
badd +9 spec/factories/account_factory.rb
silent! argdel *
set lines=52 columns=162
edit Gemfile
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
tabedit app/serializers/plutus/account_serializer.rb
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
let s:l = 3 - ((2 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 029|
tabedit lib/tasks/worker.rake
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
let s:l = 9 - ((8 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
tabedit spec/jobs/runner/create_account_spec.rb
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
tabedit app/workers/app_worker.rb
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
let s:l = 15 - ((14 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 019|
tabedit spec/jobs/app_worker_spec.rb
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
let s:l = 11 - ((10 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
tabedit Procfile
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
let s:l = 2 - ((1 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 037|
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
