source $HOME/.config/nvim/plugs.vim
source $HOME/.config/nvim/leader_map.vim

:syntax on
:set ruler
:set autoindent
:set nu
:set softtabstop=2
:set tabstop=2
:set shiftwidth=2
:set expandtab
:set completeopt=menuone,longest
:set clipboard=unnamedplus
:set wildmode=longest,list,full
:set wildmenu
:set sh=zsh
:set cursorline
set termguicolors


" Folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set autoread
set showtabline=2

" Color
let g:material_style='palenight'
set background=dark
colorscheme vim-material
"hi ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" colorscheme dracula

map <leader>n :call RenameFile()<cr>
nmap <leader>vcr :source $HOME/.config/nvim/init.vim<cr>

command! -bang FZFRgFiles
  \ call fzf#run(fzf#wrap('rg Files', {'source': 'rg --files .' }, <bang>0))

nmap <leader>pf :FZFRgFiles<cr>
nmap <leader>pg :FzfGitFiles<cr>
nmap <leader>pb :FzfBuffers<cr>
nmap <leader>pa :exec ":FzfRg ".input("Ag> ")<cr>
nmap <leader>] :bn<cr>
nmap <leader>[ :bp<cr>

nnoremap <leader><tab> :b#<cr>
nnoremap <c-l> :nohl<cr><c-l>
nnoremap <cr> za

" Reset <cr> for quickfix
:autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

cmap w!! w !sudo tee %
:command! Mkd !mkdir -p %:h

autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Persistent undo
set undofile
set undodir=$HOME/.config/nvim/undo

set undolevels=1000
set undoreload=10000

set ttimeout
set ttimeoutlen=0
set hidden
set inccommand=nosplit
