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
Plug '~/Workspace/OSS/LanguageClient-neovim'
Plug '~/Workspace/OSS/lspc'
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

" Terminal buffer options for fzf
autocmd! FileType fzf
autocmd  FileType fzf set noshowmode noruler nonu

if has('nvim') && exists('&winblend') && &termguicolors
  set winblend=20

  hi NormalFloat guibg=None
  if exists('g:fzf_colors.bg')
    call remove(g:fzf_colors, 'bg')
  endif

  if stridx($FZF_DEFAULT_OPTS, '--border') == -1
    let $FZF_DEFAULT_OPTS .= ' --border'
  endif

  function! FloatingFZF()
    let width = float2nr(&columns * 0.8)
    let height = float2nr(&lines * 0.6)
    let opts = { 'relative': 'editor',
               \ 'row': (&lines - height) / 2,
               \ 'col': (&columns - width) / 2,
               \ 'width': width,
               \ 'height': height }

    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
  endfunction

  let g:fzf_layout = { 'window': 'call FloatingFZF()' }
endif

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
let g:ale_rust_cargo_check_all_targets = 1
let g:lspc = {
      \ 'rust': {
      \     'root_markers': ['Cargo.lock'],
      \     'command': ['rustup', 'run', 'stable', 'ra_lsp_server'],
      \     },
      \ 'auto_start': v:false,
      \ }
