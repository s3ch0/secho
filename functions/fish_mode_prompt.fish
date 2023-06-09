
# Emulates vim's cursor shape behavior
# Set the normal and visual mode cursors to a block
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert line
# Set the replace mode cursor to an underscore
set fish_cursor_replace_one underscore
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block

function fish_mode_prompt
  switch $fish_bind_mode
    case default
        if test $_secho_mode = "vi"
            set_color blue
            echo '(N) '
        else
            echo ''
        end
    case insert
      set_color purple
      echo '(I) '
    case replace_one
      set_color green
      echo '(R) '
    case visual
      set_color brmagenta
      echo '(V) '
    case '*'
      set_color red
      echo '(?) '
  end
  set_color normal
end
