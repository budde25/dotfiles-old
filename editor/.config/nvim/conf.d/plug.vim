""""""""""" 
" Plugins "
"""""""""""

call plug#begin('~/.config/nvim/plugged')

" Colors
Plug 'chriskempson/base16-vim' " Base16 support

" Projects
Plug 'editorconfig/editorconfig-vim' " Respect an editorconfig
Plug 'airblade/vim-rooter' " Project root directory

" GUI
Plug 'itchyny/lightline.vim' " Bottom 'powerline' bar
Plug 'machakann/vim-highlightedyank' " Highlights yanked test

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language Server Protocol

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Language Support
Plug 'dag/vim-fish'
Plug 'rust-lang/rust.vim'
Plug 'tikhomirov/vim-glsl'

call plug#end()
