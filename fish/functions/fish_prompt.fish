set fish_prompt_pwd_dir_length 0

# Git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch cyan
set __fish_git_prompt_color_dirtystate magenta
set __fish_git_prompt_color_stagedstate green
set __fish_git_prompt_color_upstream cyan

# Git Characters
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_stagedstate '⇢'
set __fish_git_prompt_char_upstream_prefix ' '
set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_upstream_ahead '⇡'
set __fish_git_prompt_char_upstream_behind '⇣'
set __fish_git_prompt_char_upstream_diverged '⇡⇣'

function _print_in_color
  set -l string $argv[1]
  set -l color  $argv[2]

  set_color $color
  printf $string
  set_color normal
end

function _prompt_color_for_status
  if test $argv[1] -eq 0
    echo magenta
  else
    echo red
  end
end

function __cob_git_hash
  set -l hash (git rev-parse HEAD ^ /dev/null)
  if test $status -eq 0
    set -l prettyhash (echo $hash | cut -c1-8)
    echo "["$prettyhash"]"
  end
end

function fish_prompt
  set -l last_status $status

  _print_in_color "\n"(prompt_pwd) blue

  __fish_git_prompt "  %s"

  __cob_git_hash

  _print_in_color "\n❯ " (_prompt_color_for_status $last_status)
end

