""""""""""" 
" Plugins "
"""""""""""

call plug#begin('~/.config/nvim/plugged')

" Colors
Plug 'chriskempson/base16-vim' " Base16 support

" Projects
Plug 'editorconfig/editorconfig-vim' " Respect an editorconfig
Plug 'airblade/vim-rooter' " Project root directory
Plug 'preservim/nerdtree'

" GUI
Plug 'itchyny/lightline.vim' " Bottom 'powerline' bar
Plug 'machakann/vim-highlightedyank' " Highlights yanked test

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language Server Protocol

" Syntax
Plug 'sheerun/vim-polyglot'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Editing
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

" Language Support
Plug 'dag/vim-fish'
Plug 'rust-lang/rust.vim'
Plug 'nastevens/vim-cargo-make'

call plug#end()

