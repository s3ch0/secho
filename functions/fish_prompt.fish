
###############################################################################
# => Left prompt
###############################################################################
function _secho_prompt
  set -l prefix_col green
  set -l middle_col purple
  set -l suffix_col blue
  set -l common_char "❯"
  set -l user_char "\$"
  set -l end_char " "

  if fish_is_root_user
    set user_char '#'
  end
  echo (set_color $prefix_col)$user_char (set_color $prefix_col)$common_char(set_color $middle_col)$common_char(set_color $suffix_col)$common_char$end_char

end



function fish_prompt -d 'Write out the left prompt of the dangerous theme'
	echo -n -s (_secho_prompt)

end
