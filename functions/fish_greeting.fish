####################
# => Welcome message
####################


function kset
	setxkbmap -option ctrl:nocaps
	xcape -e 'Control_L=Escape'
end

function read_confirm -d "read confirm"
  while true
	read -l -p 'set_color green; echo -n "❯ "; set_color normal;' confirm
    switch $confirm
      case Y y
        return 0
      case '' N n
        return 1
    end
  end
end


function long_mode_welcome
    echo This is (set_color blue)secho(set_color normal) theme for fish.
    echo Type (set_color cyan) secho_help (set_color normal) to get help! 
	echo (set_color cyan)     "╔════════════════════════════════════════════════════╗"
	echo (set_color green)    "|           ⎋    Wlecome to Secho    ⎋               |"                 
	echo (set_color purple)   "|    My Website: https://www.zhouhaobusy.com        |"
	echo (set_color blue)     "|    My Github:  https://github.com/zhouhaobusy     |"
	echo (set_color cyan)     "╚════════════════════════════════════════════════════╝"
end


function short_mode_welcome
    echo This is (set_color blue)secho(set_color normal) theme for fish.
    echo Type (set_color cyan) secho_help (set_color normal) to get help! 
end



function weblist
	# you can add your favorite website url in there
	echo (set_color --bold red)    " Website List" (set_color normal)                
	echo (set_color green)         "    |- https://www.zhouhaobusy.com        "
	echo (set_color green)         "    |- https://github.com/zhouhaobusy     "
	echo (set_color green)         "    |- oss://zhouhao-blog/blog/     "
	echo (set_color green)         "    |- https://mirrors.aliyun.com/pypi/simple/     "
end

function mkcd -d "Create a Directory and enter it."
	mkdir $argv 
	cd $argv
end

function fh -d "fuzzy find history "
	set -l _history (history | fzf --height 50% --reverse)
	if test -n "$_history"
		echo (set_color green)$_history(set_color normal)
		echo (set_color cyan)"Do you want to execute this command? (Y/N)"(set_color normal)
		if read_confirm
			eval $_history # execute the command
		end
	else
		echo (set_color green)"Exit Successful" (set_color normal)
	end
end

function fish_greeting -d 'Show greeting in login shell.'
	# check the windows width 
	set -l _win_width (tput cols)
	if test $_win_width -gt 60
		long_mode_welcome
	else
		short_mode_welcome
	end
end
