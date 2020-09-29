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
  \ call fzf#run(fzf#wrap('rg Files', {'source': 'rg --files --follow .' }, <bang>0))

nmap <leader>pf :Files<cr>
nmap <leader>pg :GFiles<cr>
nmap <leader>pb :Buffers<cr>
nmap <leader>gc :Commits<cr>
nmap <leader>gg :BCommits<cr>
nmap <leader>pa :exec ":Rg ".input("Ag> ")<cr>
nmap <leader>ps :exec ":Rg ".expand("<cword>")<cr>
nmap <leader>] :bn<cr>
nmap <leader>[ :bp<cr>

nnoremap <leader><tab> :b#<cr>

nnoremap <leader><space> :StripWhitespace<cr>
nnoremap <leader>ss :source %<CR>

imap <c-x><c-f> <plug>(fzf-complete-path)
