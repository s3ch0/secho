################
# => PWD segment
################
function __secho_prompt_pwd -d 'Displays the present working directory'
  set -l path_col 989898  # gray color
  set -l end_suffix "❮"

  echo (set_color -i $path_col)(basename (pwd)) (set_color white)$end_suffix


end

###############################################################################
# => Prompt
###############################################################################

function fish_right_prompt -d 'Write out the right prompt of the secho theme'
    echo -n -s (__secho_prompt_pwd)
	set_color normal
end
