call pathogen#infect()
:syntax on
:set ruler
:set autoindent
:set nu
:set softtabstop=2
:set tabstop=2
:set shiftwidth=2
:set expandtab
:set completeopt=longest,menuone
:set clipboard=unnamed
:filetype plugin indent on 
:set wildmode=longest,list,full
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:session_autoload='no'
let g:session_autosave='yes'
let g:ruby_doc_command='open'
set tags=tags;/
map <C-F12> :!/usr/local/bin/ctags -R --exclude=.git --exclude=logs --exclude=doc .<CR>

set t_Co=256

map <F2> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

" Color
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set autoread

autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Reload in chrome
map <leader>l :w\|:silent !chrome-cli reload<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>
nnoremap <c-l> :nohl<cr><c-l>
noremap <space> :
nnoremap <cr> za

if has("gui_running")
  " Vim powerline
  set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim
  set guifont=Menlo\ For\ Powerline
  set laststatus=2
endif

" HTML2HAML
:vmap <leader>h :!/Users/unreal/.rvm/bin/vim_html2haml -e<cr>

" Js2Coffee
:vmap <leader>j :!/Users/unreal/AppSource/node_modules/js2coffee/bin/js2coffee-wrap<cr>
:nmap <silent> <leader>d <Plug>DashSearch

:nmap <leader>t :CtrlP<cr>
let g:ctrlp_user_command = {
	\ 'types': {
		\ 1: ['.git', 'cd %s && git ls-files'],
		\ 2: ['.hg', 'hg --cwd %s locate -I .'],
		\ },
	\ 'fallback': 'find %s -type f'
\ }
" Search
set hlsearch

cmap w!! w !sudo tee %
:command Mkd !mkdir -p %:h

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

nnoremap <Down> :m .+1<CR>==
nnoremap <Up> :m .-2<CR>==
inoremap <Down> <Esc>:m .+1<CR>==gi
inoremap <Up> <Esc>:m .-2<CR>==gi
vnoremap <Down> :m '>+1<CR>gv=gv
vnoremap <Up> :m '<-2<CR>gv=gv

" Rainbow parenthesis
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

nnoremap <F5> :GundoToggle<CR>

" Fugitive
autocmd User fugitive 
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

