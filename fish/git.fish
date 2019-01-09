function _current_branch
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

alias g 'git'

abbr ga 'git add'
abbr gaa 'git add --all'
abbr gap 'git add --patch'

abbr gbl 'git blame -b -w'

abbr gb 'git branch'
abbr gba 'git branch -a'
abbr gbnm 'git branch --no-merged'
abbr gbr 'git branch --remote'
abbr gbd 'git branch -d'
abbr gbfd 'git branch -D'

abbr gbs 'git bisect'
abbr gbsb 'git bisect bad'
abbr gbsg 'git bisect good'
abbr gbsr 'git bisect reset'
abbr gbss 'git bisect start'

abbr gc 'git commit -v'
abbr gcm 'git commit -v -m'
abbr gca 'git commit -v --amend'
abbr gcan 'git commit -v --no-edit --amend'

abbr gcf 'git config --list'

function gclean
  git reset --hard
  git clean -dfx
end

abbr gco 'git checkout'
abbr gcb 'git checkout -b'
abbr gcd 'git checkout develop'
abbr gcm 'git checkout master'

abbr gcount 'git shortlog -sn'
abbr gcp 'git cherry-pick'

abbr gd 'git diff'
abbr gdca 'git diff --cached'
abbr gdt 'git diff-tree --no-commit-id --name-only -r'
abbr gdw 'git diff --word-diff'

abbr gf 'git fetch'
abbr gfa 'git fetch --all --prune'
abbr gfo 'git fetch origin'

abbr gg 'git gui citool'
abbr gga 'git gui citool --amend'
abbr gk 'gitk --all --branches'
abbr gke 'gitk --all (git log -g --pretty=format:%h)'

abbr ggpull 'git pull origin (_current_branch)'
abbr ggpush 'git push origin (_current_branch)'
abbr ggsup 'git branch --set-upstream-to=origin/(_current_branch)'

abbr gl 'git pull'
abbr gpll 'git pull -r'
abbr glg 'git log --stat --color'
abbr glgp 'git log --stat --color -p'
abbr glgg 'git log --graph --color'
abbr glgga 'git log --graph --decorate --all'
abbr glgm 'git log --graph --max-count=10'
abbr glo 'git log --oneline --decorate --color'
abbr glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
abbr glola="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
abbr glog 'git log --oneline --decorate --color --graph'
function glp
  if not [ -z $argv[1] ]
    git log --pretty=format:$argv[1]
  end
end

abbr gm 'git merge'
abbr gmom 'git merge origin/master'
abbr gmt 'git mergetool --no-prompt'
abbr gmtvim 'git mergetool --no-prompt --tool=vimdiff'
abbr gmum 'git merge upstream/master'

abbr gp 'git push'
abbr gpd 'git push --dry-run'
function gpoat
  git push origin --all
  git push origin --tags
end
abbr gpu 'git push upstream'
abbr gpv 'git push -v'

abbr gr 'git remote'
abbr gra 'git remote add'
abbr grb 'git rebase'
abbr grba 'git rebase --abort'
abbr grbc 'git rebase --continue'
abbr grbi 'git rebase -i'
abbr grbm 'git rebase master'
abbr grbs 'git rebase --skip'
abbr grh 'git reset HEAD'
abbr grhh 'git reset HEAD --hard'
abbr grmv 'git remote rename'
abbr grrm 'git remote remove'
abbr grset 'git remote set-url'

abbr gsb 'git status -sb'
abbr gss 'git status -s'
abbr gst 'git status'


abbr gwch 'git whatchanged -p --abbrev-commit --pretty=medium'
abbr gwip 'git add -A; git rm (git ls-files --deleted) 2> /dev/null; git commit -m "--wip--"'
