## FISH PROMPT

function fish_prompt
  set -l last_status $status

  set_color normal
  set_color -r magenta
  printf "\uE0B0" 
  set_color normal
  set_color -b magenta white
  printf "%s " (_pwd_with_tilde)
  set_color normal
  set_color magenta
  printf "\uE0B0"
  set_color normal
  printf " "
  _print_in_color "\n=> " (_prompt_color_for_status $last_status)
  set_color normal;
end
