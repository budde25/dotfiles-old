" Teach a vim to fish...
if &shell =~# 'fish$'
  set shell=sh
endif

" Vim/Neovim config
let mapleader = "\<space>" 

" No vi compatibility
set nocompatible

" Source config files
$HOME/.config/nvim/conf.d/plug.vim
$HOME/.config/nvim/conf.d/general.vim
$HOME/.config/nvim/conf.d/plugins.vim
$HOME/.config/nvim/conf.d/keys.vim

