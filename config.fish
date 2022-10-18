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

alias gip="ifconfig -v wlp4s0 | grep inet | grep -v inet6 | tr -s ' ' | cut -d ' ' -f3"
alias p="ping www.baidu.com"
alias r="ranger"
alias s="neofetch --source ~/Pictures/icons/blackarch-ascii | lolcat"
alias t="cd ~/tmp"
alias blog='cd /home/zh/GitHub/blog-article/Vulnhub'
alias burpsuite='/usr/lib/jvm/java-17-openjdk/bin/java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:~/tools/web/burpsuite/burploader.jar -noverify -jar ~/tools/web/burpsuite/burpsuite_pro_v2022.2.4.jar'
alias wps-ppt='wpp'
alias wps-sheets='et'

alias fuck='cd /home/zh/GitHub/blog-article/Sec/Misc/Note/'

alias bp='/usr/lib/jvm/java-17-openjdk/bin/java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:/home/zh/tools/web/burpsuite/burploader.jar -noverify -jar /home/zh/tools/web/burpsuite/burpsuite_pro_v2022.2.4.jar'
setxkbmap -option ctrl:nocaps
set EDITOR nvim
export LD_LIBRARY_PATH=./
export _JAVA_AWT_WM_NONREPARENTING=1
