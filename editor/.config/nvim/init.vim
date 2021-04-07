" Teach a vim to fish...
if &shell =~# 'fish$'
  set shell=sh
endif

" Vim/Neovim config
let mapleader = "\<space>" 

" No vi compatibility
set nocompatible

" Source config files
source $HOME/.config/nvim/conf.d/plug.vim
source $HOME/.config/nvim/conf.d/general.vim
source $HOME/.config/nvim/conf.d/plugins.vim
source $HOME/.config/nvim/conf.d/keys.vim

