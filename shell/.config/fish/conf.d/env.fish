######################################################
### Environmental Variables
######################################################

# gx = global and exported

# XDG Compliance
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share

# Cleanup home dir
set -gx EM_CONFIG $XDG_CONFIG_HOME/emscripten/config
set -gx EM_CACHE $XDG_CACHE_HOME/emscripten/cache
set -gx EM_PORTS $XDG_DATA_HOME/emscripten/cache
set -gx WINEPREFIX $XDG_DATA_HOME/wineprefixes/default
set -gx WGETRC $XDG_CONFIG_HOME/wgetrc
set -gx TMUX_TMPDIR $XDG_RUNTIME_DIR
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -gx NODE_REPL_HISTORY $XDG_DATA_HOME/node_repl_history
set -gx GNUPGHOME $XDG_DATA_HOME/gnupg
set -gx PYLINTHOME $XDG_CACHE_HOME/pylint
set -gx GRADLE_USER_HOME $XDG_DATA_HOME/gradle
set -gx CUDA_CACHE_PATH $XDG_CACHE_HOME/nv
set -gx XAUTHORITY $XDG_RUNTIME_DIR/Xauthority
set -gx XINITRC $XDG_CONFIG_HOME/X11/xinitc
set -gx XSERVERRC $XDG_CONFIG_HOME/X11/xserverrc
set -gx LESSHISTFILE -
set -gx ANDROID_SDK_ROOT $XDG_DATA_HOME/android
set -gx ANDROID_SDK_HOME $XDG_DATA_HOME/android

# Prefered editor
if command -v nvim > /dev/null
    set -gx EDITOR nvim
    set -gx VISUAL nvim
else if command -v vim > /dev/null
    set -gx EDITOR vim
    set -gx VISUAL vim
else
    set -gx EDITOR nano
end

if test -n "$DISPLAY"
    if command -v firefox-developer-edition > /dev/null
        set -gx BROWSER firefox-developer-edition
    else if command -v firefox > /dev/null
	set -gx BROWSER firefox
    end
else
    set -gx BROWSER links
end

if command -v rg > /dev/null
    # show hidden files but don't show .git directory
    # https://github.com/BurntSushi/ripgrep/issues/340
    set -gx FZF_DEFAULT_COMMAND rg --files --hidden --glob '!.git'
    set -gx FZF_DEFAULT_OPTS -m --height 50% --border
end

