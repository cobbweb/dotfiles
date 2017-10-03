## FISH PROMPT

function fish_prompt
  set -l last_status $status

  set_color normal
  set_color -r brblue
  printf "\uE0B0"
  set_color normal
  set_color -r blue 
  printf " %s " (_pwd_with_tilde)
  set_color normal
  set_color blue
  printf "\uE0B0"
  set_color normal
  printf " "
  _print_in_color "\n=> " (_prompt_color_for_status $last_status)
  set_color normal;
end
