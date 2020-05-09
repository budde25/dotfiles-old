# Ethan's Custon Zshrc

# oh-my-zsh settings
export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
ZSH_THEME="risto"

# zshplugins
plugins=(
	git
	colorize
	cp
	history
	extract
	tmux
	web-search
	vi-mode
)

source $ZSH/oh-my-zsh.sh

# Loads nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fpath+=${ZDOTDIR:-~}/.zsh_functions

# Export vars
export HOSTNAME=$HOST
export DOTFILES=$XDG_CONFIG_HOME/dotfiles
export LANG=en_US.UTF-8

# Sets up work environment at csl
if [[ $HOST == *.cs.wisc.edu ]]; then
    source $XDG_CONFIG_HOME/dotfiles/workrc
fi

# User configuration
if type "nvim" >/dev/null; then
    export EDITOR="nvim"
else
    export EDITOR="vim"
fi

# Custom alias's
alias zshrc="$EDITOR $DOTFILES/zshrc && source $DOTFILES/zshrc"
alias zshenv="$EDITOR $DOTFILES/zshenv && source $DOTFILES/zshenv"
alias workrc="$EDITOR $DOTFILES/workrc && source $DOTFILES/workrc"
alias vi="$EDITOR"
alias vim="$EDITOR"
alias pac="sudo pacman"
alias ssh="TERM=xterm-256color ssh"

