# $PATH and $path are in sync
typeset -U PATH path
path=(
	"$HOME/.local/bin"
	"$HOME/.scripts"
    "$HOME/.cargo/bin"
    "$HOME/.local/share/flutter/bin"
    "$HOME/.emacs.d/bin"
	"$path[@]"
	)

export PATH

# Setting Xauthority
export XAUTHORITY=$HOME/.Xauthority


# XDG Compliance
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export HISTFILE=$XDG_DATA_HOME/zsh/history
export ANDROID_SDK_HOME=$XDG_CONFIG_HOME/android
export VIMINIT=$XDG_CONFIG_HOME/vim/vimrc
export EM_CONFIG=$XDG_CONFIG_HOME/emscripten/config
export EM_CACHE=$XDG_CACHE_HOME/emscripten/cache
export EM_PORTS=$XDG_DATA_HOME/emscripten/cache
export WINEPREFIX=$XDG_DATA_HOME/wineprefixes/default
export WGETRC=$XDG_CONFIG_HOME/wgetrc
export TMUX_TMPDIR=$XDG_RUNTIME_DIR
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NODE_REPL_HISTORY=$XDG_DATA_HOME/node_repl_history
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export PYLINTHOME=$XDG_CACHE_HOME/pylint
export GRADLE_USER_HOME=$XDG_DATA_HOME/gradle
export CUDA_CACHE_PATH=$XDG_CACHE_HOME/nv
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export XSERVERRC=$XDG_CONFIG_HOME/X11/xserverrc
export LESSHISTFILE=-
export ANDROID_SDK_ROOT=$XDG_DATA_HOME/android
