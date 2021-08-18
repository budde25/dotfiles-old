# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end

set -g fish_prompt_pwd_dir_length 3

set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'

fish_vi_key_bindings

# abbrivations > alias
abbr -a g  'git'
abbr -a ga 'git add -p'
abbr -a gp 'git push'
abbr -a gl 'git pull'
abbr -a gst 'git status'
abbr -a e  'nvim'
abbr -a o  'xdg-open'
abbr -a c  'cargo'
abbr -a m  'make'
abbr -a x  'exit'

if command -v yay  > /dev/null
	abbr -a p 'yay'
	abbr -a up 'yay -Syu'
else
	abbr -a p 'sudo pacman'
	abbr -a up 'sudo pacman -Syu'
end

if command -v exa > /dev/null
	abbr -a l 'exa --git --git-ignore --group-directories-first'
	abbr -a ls 'exa --git --git-ignore --group-directories-first'
	abbr -a ll 'exa -l --icons --git --git-ignore --group-directories-first'
	abbr -a lll 'exa -la --icons --git --group-directories-first'
else
	abbr -a l 'ls'
	abbr -a ll 'ls -l'
	abbr -a lll 'ls -la'
end

if command -v nvim > /dev/null
	abbr -a vi 'nvim'
	abbr -a vim 'nvim'
else if command -v vim > /dev/null
	abbr -a vi 'vim'
	abbr -a nvim 'vim'
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end


# Setup rvm if available
if command -v rvm > /dev/null
    rvm default
end

# Setup linux brew
if test -e /home/linuxbrew/.linuxbrew/bin/brew
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

if command -v brew > /dev/null
    if test -d (brew --prefix)"/share/fish/completions"
        set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
   end
   if test -d (brew --prefix)"/share/fish/vendor_completions.d"
       set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
   end
end

if command -v pyenv > /dev/null
    status is-login; and pyenv init --path | source
    pyenv init - | source
end

if command -v zoxide > /dev/null
    zoxide init fish | source
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
