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
Plug 'rust-lang/rust.vim'
Plug 'moll/vim-bbye'
Plug 'mhinz/vim-grepper'
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'majutsushi/tagbar'
Plug '/mnt/data/Workspace/OSS/LanguageClient-neovim'
Plug '~/Workspace/OSS/vim-lsc'
Plug 'hzchirs/vim-material'
Plug 'mgee/lightline-bufferline'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
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
let g:ag_working_path_mode="r"

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'ra_lsp_server'],
    \ }

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline#bufferline#number_map = {
      \ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
      \ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}
let g:lightline#bufferline#show_number = 2

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
" Automatically start language servers.
let g:LanguageClient_autoStart = 0

:nnoremap <Leader>q :Bdelete<CR>
let g:autofmt_autosave = 1
"let g:LanguageClient_devel = 1 " Use rust debug build
let g:LanguageClient_loggingLevel = 'DEBUG' " Use highest logging level
let g:LanguageClient_loggingFile = expand('~/.vim/LanguageClient.log')
let g:LanguageClient_serverStderr = expand('~/.vim/LanguageServerErr.log')
let g:LanguageClient_rootMarkers = {
    \ 'rust': ['Cargo.lock'],
    \ }

let g:ale_linters = {
  \   'rust': ['cargo'],
  \ }
