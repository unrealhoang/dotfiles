call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'chriskempson/base16-vim'
Plug 'diepm/vim-rest-console'
Plug 'elixir-lang/vim-elixir'
Plug 'hzchirs/vim-material'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'kchmck/vim-coffee-script'
Plug 'majutsushi/tagbar'
Plug 'mgee/lightline-bufferline'
Plug 'mhinz/vim-grepper'
Plug 'moll/vim-bbye'
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lsp'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rking/ag.vim'
Plug 'rust-lang/rust.vim'
Plug 'schickling/vim-bufonly'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
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
  set winblend=10

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

let g:lightline#bufferline#number_map = {
      \ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
      \ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'
      \ }
function! Tab_num(n) abort
  return g:lightline#bufferline#number_map[a:n]." \ue0bb"
endfunction

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

let g:lightline.separator = { 'left': "\ue0b8", 'right': "\ue0be" }
let g:lightline.subseparator = { 'left': "\ue0b9", 'right': "\ue0b9" }
let g:lightline.tabline_separator = { 'left': "\ue0bc", 'right': "\ue0ba" }
let g:lightline.tabline_subseparator = { 'left': "\ue0bb", 'right': "\ue0bb" }

let g:lightline.active = {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'readonly', 'filename', 'modified', 'fileformat', 'devicons_filetype' ] ],
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok', 'pomodoro' ],
      \           [ 'asyncrun_status' ] ]
      \ }
let g:lightline.inactive = {
      \ 'left': [ [ 'filename' , 'modified', 'fileformat', 'devicons_filetype' ]],
      \ 'right': [ [ 'lineinfo' ] ]
      \ }
let g:lightline.component = {
      \ 'bufinfo': '%{bufname("%")}:%{bufnr("%")}',
      \ 'vim_logo': "\ue7c5",
      \ 'mode': '%{lightline#mode()}',
      \ 'absolutepath': '%F',
      \ 'relativepath': '%f',
      \ 'filename': '%t',
      \ 'filesize': "%{HumanSize(line2byte('$') + len(getline('$')))}",
      \ 'fileencoding': '%{&fenc!=#""?&fenc:&enc}',
      \ 'fileformat': '%{&fenc!=#""?&fenc:&enc}[%{&ff}]',
      \ 'filetype': '%{&ft!=#""?&ft:"no ft"}',
      \ 'modified': '%M',
      \ 'bufnum': '%n',
      \ 'paste': '%{&paste?"PASTE":""}',
      \ 'readonly': '%R',
      \ 'charvalue': '%b',
      \ 'charvaluehex': '%B',
      \ 'percent': '%2p%%',
      \ 'percentwin': '%P',
      \ 'spell': '%{&spell?&spelllang:""}',
      \ 'lineinfo': '%2p%% %3l:%-2v',
      \ 'line': '%l',
      \ 'column': '%c',
      \ 'close': '%999X X ',
      \ 'winnr': '%{winnr()}'
      \ }
let g:lightline.component_function = {
      \ 'gitbranch': 'Gitbranch',
      \ 'devicons_filetype': 'Devicons_Filetype',
      \ 'devicons_fileformat': 'Devicons_Fileformat',
      \ }
let g:lightline.component_expand = {
      \ 'linter_checking': 'lightline#ale#checking',
      \ 'linter_warnings': 'lightline#ale#warnings',
      \ 'linter_errors': 'lightline#ale#errors',
      \ 'linter_ok': 'lightline#ale#ok',
      \ 'asyncrun_status': 'lightline#asyncrun#status'
      \ }
let g:lightline.tabline = {
      \ 'left': [ [ 'vim_logo', 'buffers' ] ],
      \ 'right': [ [ 'gitbranch' ] ]
      \ }
let g:lightline.tab = {
      \ 'active': [ 'tabnum', 'filename', 'modified' ],
      \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }
let g:lightline.tab_component_function = {
      \ 'filename': 'lightline#tab#filename',
      \ 'modified': 'lightline#tab#modified',
      \ 'readonly': 'lightline#tab#readonly',
      \ 'tabnum': 'Tab_num'
      \ }

let g:lightline.component_expand = {
      \ 'buffers': 'lightline#bufferline#buffers',
      \ 'linter_checking': 'lightline#ale#checking',
      \ 'linter_warnings': 'lightline#ale#warnings',
      \ 'linter_errors': 'lightline#ale#errors',
      \ 'linter_ok': 'lightline#ale#ok',
      \ 'asyncrun_status': 'lightline#asyncrun#status'
      \ }
let g:lightline.component_type = {
      \ 'buffers': 'tabsel',
      \ 'linter_warnings': 'warning',
      \ 'linter_errors': 'error'
      \ }
let g:lightline#bufferline#show_number = 1

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf529"
let g:lightline#ale#indicator_errors = "\uf00d"
let g:lightline#ale#indicator_ok = "\uf00c"
let g:lightline_gitdiff#indicator_added = '+'
let g:lightline_gitdiff#indicator_deleted = '-'
let g:lightline_gitdiff#indicator_modified = '*'
let g:lightline_gitdiff#min_winwidth = '70'
let g:lightline#asyncrun#indicator_none = ''
let g:lightline#asyncrun#indicator_run = 'Running...'

" Automatically start language servers.
let g:LanguageClient_autoStart = 0

:nnoremap <Leader>q :Bdelete<CR>
let g:autofmt_autosave = 1

let g:ale_linters = {
  \   'rust': ['cargo'],
  \ }
let g:ale_rust_cargo_check_all_targets = 1
lua << EOF
local util = require 'nvim_lsp/util'
local lsp = require 'nvim_lsp'
lsp.rust_analyzer.setup {
    root_dir = util.root_pattern("Cargo.lock");
    init_options = {
        publishDecorations = true;
    };
}
EOF

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <c-a> <cmd>lua vim.lsp.buf.code_action()<CR>
command! LspStopClients :lua vim.lsp.stop_client()<CR>

autocmd Filetype rust setlocal omnifunc=v:lua.vim.lsp.omnifunc


let g:vrc_auto_format_response_patterns = {
  \ 'json': 'python3 -m json.tool',
  \ 'xml': ''
\}
