
# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_right_prompt
  set -l last_status $status
  set -l dirty (command git status --porcelain --ignore-submodules=dirty 2> /dev/null)

  if _in_git_directory
    set -l branch (_git_branch_name)

    if [ "$branch" = "master" ]
      _print_in_color $branch yellow
    else
      _print_in_color "\uF418 $branch" cyan
    end

    _print_in_color " ["(_git_short_sha)"]" green
    _print_in_color " "(_git_upstream_status) cyan

    if [ "$dirty" != "" ]
      _print_in_color \uF490 red
    end
  end

  set_color normal
end

