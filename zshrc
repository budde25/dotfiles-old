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

# Sets up work environment at csl
if [[$HOST == *.cs.wisc.edu]]; then
    source $XDG_CONFIG_HOME/dotfiles/workrc
fi

# Export hostname
export HOSTNAME=$HOST

# User configuration
export LANG=en_US.UTF-8

if type "nvim" >/dev/null; then
    export EDITOR="nvim"
else
    export EDITOR="vim"
fi

# Custom alias's
alias zshrc="$EDITOR $XDG_CONFIG_HOME/dotfiles/zshrc"
alias zshenv="$EDITOR $XDG_CONFIG_HOME/dotfiles/zshenv"
alias vi="$EDITOR"
alias vim="$EDITOR"
alias pac="sudo pacman"


