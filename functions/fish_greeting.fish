####################
# => Welcome message
####################


# function kset
# setxkbmap -option ctrl:nocaps
# xcape -e 'Control_L=Escape'
# end

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

function copy -d "Copy from Share.txt"
		cat /home/zh/Windows/Share/share.txt | xclip -selection c
end

function gpip -d "Gain Proxy ip"
  # curl https://www.ipify.org
  # curl https://ip-api.com
  # curl https://ipinfo.io
  # curl https://ipstack.com
  curl myip.ipip.net
end

# function paste -d "paste from Share.txt"
# 	xclip -o
# end


function short_mode_welcome
    echo This is (set_color blue)secho(set_color normal) theme for fish.
    echo Type (set_color cyan) secho_help (set_color normal) to get help! 
	# pokemon-colorscripts -r --no-title
end

function long_mode_welcome
	pokemon-colorscripts -r --no-title -s
    echo This is (set_color blue)secho(set_color normal) theme for fish.
    echo Type (set_color cyan) secho_help (set_color normal) to get help! 
end

function web
  fish ~/.config/fish/.weblist
end

function eweb
  nvim ~/.config/fish/.weblist
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
		else
		    echo -n $_history | xclip -selection c
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

function toggle_proxy
    if set -q http_proxy; or set -q https_proxy
        # 清除 http_proxy 和 https_proxy 环境变量
        set -e -g http_proxy
        set -e -g https_proxy
        echo "Proxy variables cleared."
    else
        # 设置 http_proxy 和 https_proxy 环境变量为您想要的值
        set -gx http_proxy http://127.0.0.1:20171
        set -gx https_proxy http://127.0.0.1:20171
        echo "Proxy variables set."
    end
end


function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
alias tp toggle_proxy

abbr --add dotdot --regex '^\.\.+$' --function multicd
# abbr --add leetcode gcc -fsanitize=address -g -Og -Wall -Wextra -Werror -pedantic -std=c99 
abbr --add vfa vf activate
abbr --add vfd vf deactivate
abbr --add vfl vf ls
abbr --add vfr vf remove
abbr --add vfn vf new
