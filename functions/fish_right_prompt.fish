# +----------------+
# | => PWD segment |
# +----------------+
function __secho_prompt_pwd -d 'Displays the present working directory'
  set -l path_col 989898  # gray color
  set -l end_suffix "❮"

  echo (set_color -i $path_col)(basename (pwd)) (set_color white)$end_suffix

end


# +----------------+
# | => Git segment |
# +----------------+

function __dangerous_prompt_git_branch -d 'Return the current branch name'
	# gain git branch
    set -l branch (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')

    if not test $branch > /dev/null
        set -l position (command git describe --contains --all HEAD 2> /dev/null)
        if not test $position > /dev/null
            set -l commit (command git rev-parse HEAD 2> /dev/null | sed 's|\(^.......\).*|\1|')
            set_color $dangerous_colors[11]
            if test $commit
            switch $pwd_style
                case short long
                    echo -n "❯ ➦ $commit "
            end
            echo -n '❯'
        end
        else
            set_color $dangerous_colors[9]
            switch $pwd_style
                case short long
                    echo -n "❯  $position "
            end
            echo -n '❯'
        end
    else
        set_color $dangerous_colors[4]
        switch $pwd_style
            case short long
                echo -n "❯  $branch "
        end
        echo -n '❯'
    end
end


# +============================================================================+
# | => Prompt                                                                   |
# +============================================================================+

function fish_right_prompt -d 'Write out the right prompt of the secho theme'
    echo -n -s (__secho_prompt_pwd)
	set_color normal
end
