####################
# => Welcome message
####################
function long_mode_welcome
    echo This is (set_color blue)secho(set_color normal) theme for fish, a theme for the 70s.
    echo Type (set_color cyan) secho_help (set_color normal) to get help! 
	echo (set_color green) "╔════════════════════════════════════════════════════╗"
	echo (set_color cyan)  "|    My Website: https://www.zhouhaobusy.com        |"
	echo (set_color cyan)  "|    My Github:  https://github.com/zhouhaobusy     |"
	echo (set_color green) "╚════════════════════════════════════════════════════╝"
end

function short_mode_welcome
    echo This is (set_color blue)secho(set_color normal) theme for fish, a theme for the 70s.
    echo Type (set_color cyan) secho_help (set_color normal) to get help! 
	
end

function fish_greeting -d 'Show greeting in login shell.'
	set -l _win_width (tput cols)
	if test $_win_width -gt 60
		long_mode_welcome
	else
		short_mode_welcome
	end

	  
end
