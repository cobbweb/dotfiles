function fish_title
  set title "/"(basename (pwd))"/"

  if _in_git_directory
    set title (basename (git rev-parse --show-toplevel))
    set title "$title ["(_git_branch_name)"]"
  end

  echo $title
end
