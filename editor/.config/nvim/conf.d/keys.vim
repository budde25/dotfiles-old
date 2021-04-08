"""""""""""""""""
" Key Remapping "
"""""""""""""""""

" Start/End using home row
map H ^
map L $

" No arrow keys, slow
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Easier save
nnoremap <leader>w :w<CR>

" Clipboard integration 
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+y$

" Esc position bad, CAPS-LOCK is bound to ctrl
inoremap <C-l> <Esc>
" Muscle Memory
inoremap <Esc> <nop>
