#!bin/dash
export DOTFILES="$HOME/.config/dotfiles"

# ZSH
ln -fs $DOTFILES/zshrc $HOME/.zshrc

# GIT
mkdir -p $HOME/.config/git
ln -fs $DOTFILES/gitignore $HOME/.config/git/ignore
ln -fs $DOTFILES/gitconfig $HOME/.config/git/config

# VIM
mkdir -p $HOME/.config/vim
rm -rf .vimrc
ln -fs $DOTFILES/vimrc $HOME/.config/vim/vimrc

# NEOVIM
mkdir -p $HOME/.config/nvim

# NEOFETCH
mkdir -p $HOME/.config/neofetch
ln -fs $DOTFILES/neofetch.conf $HOME/.config/neofetch/config.conf

rm -rf $HOME/.doom.d/
ln -fs $DOTFILES/doom $HOME/.doom.d
