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

complete --command yay --wraps pacman

if command -v yay  > /dev/null
	abbr -a p 'yay'
	abbr -a up 'yay -Syu'
else
	abbr -a p 'sudo pacman'
	abbr -a up 'sudo pacman -Syu'
end

if command -v exa > /dev/null
	abbr -a l 'exa'
	abbr -a ls 'exa'
	abbr -a ll 'exa -l'
	abbr -a lll 'exa -la'
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

function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color blue
	echo -n (whoami)"@"(hostname)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (basename $PWD)
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '> '
	set_color normal
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

