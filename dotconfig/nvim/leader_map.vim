let mapleader=' '

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
nnoremap <leader><tab> :b#<cr>
nnoremap <leader>- :split<cr>
nnoremap <leader>\ :vsplit<cr>
nmap <leader>vcr :source $HOME/.config/nvim/init.vim<cr>

command! -bang FZFRgFiles
  \ call fzf#run(fzf#wrap('rg Files', {'source': 'rg --files .' }, <bang>0))

nmap <leader>pf :FZFRgFiles<cr>
nmap <leader>pg :FzfGitFiles<cr>
nmap <leader>pb :FzfBuffers<cr>
nmap <leader>pa :exec ":FzfRg ".input("Ag> ")<cr>
nmap <leader>ps :exec ":FzfRg ".expand("<cword>")<cr>
nmap <leader>] :bn<cr>
nmap <leader>[ :bp<cr>

nnoremap <leader><tab> :b#<cr>

" Language Client
nnoremap <leader>lcs :LanguageClientStart<CR>
nnoremap <leader>lcd :LanguageClientStop<CR>
nnoremap <silent> <leader>gn :call LanguageClient_textDocument_rename()<CR>

nnoremap <leader><space> :StripWhitespace<cr>
nnoremap <leader>ss :source %<CR>
