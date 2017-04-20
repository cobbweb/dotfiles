## FISH PROMPT

function fish_prompt
  set -l last_status $status

  set_color normal
  set_color -r BD93F9
  printf "\uE0B0"
  set_color normal
  set_color -b BD93F9 282a36
  printf " %s " (_pwd_with_tilde)
  set_color normal
  set_color BD93F9
  printf "\uE0B0"
  set_color normal
  printf " "
  _print_in_color "\n=> " (_prompt_color_for_status $last_status)
  set_color normal;
end
