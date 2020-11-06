#!bin/dash
export DOTFILES="$HOME/.config/dotfiles"

# ZSH
mkdir -p $HOME/.local/share/zsh
ln -fs $DOTFILES/zshrc $HOME/.zshrc

# GIT
mkdir -p $HOME/.config/git
ln -fs $DOTFILES/gitignore $HOME/.config/git/ignore
ln -fs $DOTFILES/gitconfig $HOME/.config/git/config

# VIM
mkdir -p $HOME/.config/vim
mkdir -p $HOME/.local/share/vim/backup
rm -rf .vimrc
ln -fs $DOTFILES/vimrc $HOME/.config/vim/vimrc

# NEOVIM
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.local/share/nvim/backup

# NEOFETCH
mkdir -p $HOME/.config/neofetch
ln -fs $DOTFILES/neofetch.conf $HOME/.config/neofetch/config.conf

rm -rf $HOME/.doom.d/
ln -fs $DOTFILES/doom $HOME/.config/doom
