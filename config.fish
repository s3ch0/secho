if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start X at login
# if status is-login
#     if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
#         exec startx -- -keeptty
#         wmname LG3D
#     end
# end

alias gip="ifconfig -v ens33| grep inet | grep -v inet6 | tr -s ' ' | cut -d ' ' -f3"
alias p="ping www.baidu.com"
alias r="ranger"
alias ranger="joshuto"
alias s="neofetch --source ~/Pictures/icons/blackarch-ascii | lolcat"
alias t="cd ~/tmp"
alias blog='cd /home/zh/GitHub/blog-article/Vulnhub'
alias burpsuite='/usr/lib/jvm/java-17-openjdk/bin/java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:~/tools/web/burpsuite/burploader.jar -noverify -jar ~/tools/web/burpsuite/burpsuite_pro_v2022.2.4.jar'
alias wps-ppt='wpp'
alias wps-sheets='et'
alias cdv='cd ~/.config/nvim/lua/'

alias fuck='cd /home/zh/GitHub/blog-article/Sec/Misc/Note/'

alias bp='/usr/lib/jvm/java-17-openjdk/bin/java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:/home/zh/tools/web/burpsuite/burploader.jar -noverify -jar /home/zh/tools/web/burpsuite/burpsuite_pro_v2022.2.4.jar'
setxkbmap -option ctrl:nocaps
set EDITOR nvim
export LD_LIBRARY_PATH=./
export DWM=/home/zh/workspace/dwm/
export _JAVA_AWT_WM_NONREPARENTING=1
export AM_HOME=/home/zh/Code/os-workbench/abstract-machine/
set -x PATH /home/zh/.local/bin/ $PATH

# this will change the Autosuggestions color
# set -g fish_color_autosuggestion red
# set -g fish_autosuggestion_enabled 0



function fish_title
    # `prompt_pwd` shortens the title. This helps prevent tabs from becoming very wide.
    echo $argv[1] (prompt_pwd)
    # echo "Hello"
end

# init the _secho_mode
set -g _secho_mode "emacs"

set fish_key_bindings fish_default_key_bindings
# 切换到默认的 Fish shell 模式
function fish_mode_default
  set fish_key_bindings fish_default_key_bindings
  # set a global variable to mark set fish mode default
  set -g _secho_mode "emacs"
  source ~/.config/fish/functions/fish_mode_prompt.fish
end

# 切换到 Vim 模式
function fish_mode_vi
  set fish_key_bindings fish_vi_key_bindings
  set -g _secho_mode "vi"
  source ~/.config/fish/functions/fish_mode_prompt.fish
end


# 使用 Alt+c 切换到默认模式
bind \ec fish_mode_default

# 使用 Alt+V 切换到 Vim 模式
bind \ev fish_mode_vi

