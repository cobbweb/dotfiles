function git-finish-branch --description "Merge and then delete the specified branch"
  git merge --no-ff --no-edit $argv
  git branch -d $argv
end

function __git_local_branch
   git branch | grep --color=never -v '*' | sed -e 's/^[ \t]*//'
end

complete -c git-finish-branch --no-files -a "(__git_local_branch)"
