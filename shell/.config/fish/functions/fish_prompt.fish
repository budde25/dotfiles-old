set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "informative"
set -g fish_prompt_pwd_dir_length 0

function fish_prompt
        set -l last_status $status

	set_color magenta
	echo -n "["(date "+%H:%M")"] "
	set_color blue
	printf '%s' $USER
        echo -n '@'
        echo -n (hostname -s)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (prompt_pwd)
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
        if not test $last_status -eq 0
            set_color $fish_color_error
        else
            set_color brblack
        end
	printf '\n[%s] ' $last_status
	set_color red
        echo -n '-> '
	set_color normal
end

