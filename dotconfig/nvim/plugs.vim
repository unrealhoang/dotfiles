call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'elixir-lang/vim-elixir'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'rking/ag.vim'
Plug 'itchyny/lightline.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'sheerun/vim-polyglot'
Plug 'chriskempson/base16-vim'
Plug 'schickling/vim-bufonly'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-surround'
Plug 'neomake/neomake'
Plug 'rust-lang/rust.vim'
Plug 'moll/vim-bbye'
Plug 'mhinz/vim-grepper'
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'majutsushi/tagbar'
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'hzchirs/vim-material'
call plug#end()

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_command_prefix = 'Fzf'
let g:fzf_buffers_jump = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:ag_working_path_mode="r"
let g:tagbar_ctags_bin = "/usr/local/bin/ctags"
let g:tagbar_width = 60

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ }

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

nnoremap <silent> <Leader>gh :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <Leader>gd :call LanguageClient_textDocument_definition()<CR>
" Automatically start language servers.
let g:LanguageClient_autoStart = 1
:nnoremap <Leader>q :Bdelete<CR>
