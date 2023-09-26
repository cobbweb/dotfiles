# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cobbweb/.zshrc'

autoload -Uz compinit
compinit

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
eval "$(devbox global shellenv)"

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# End of lines added by compinstall
export PATH="/home/cobbweb/.cargo/bin:/home/cobbweb/.ebcli-virtual-env/executables:/home/cobbweb/.yarn/bin:$PATH"
export EDITOR="nvim"

alias l="eza -alh --icons"
alias lt="eza -alhT --icons"
alias task="go-task"

alias dc="docker compose"
alias dcu="docker compose up"
alias dcud="docker compose up -d"
alias dcd="docker compose down"
alias dcr="docker composer restart"
alias dcl="docker compose logs"
alias dclf="docker compose logs -f"

alias gst="git status"
alias gl="git pull --rebase"
alias gco="git checkout"
alias gcob="git checkout -b"
alias ga="git add"
alias gap="git add --patch"
alias gb="git branch"
alias gc="git commit"
alias gcan="git commit --amend --no-edit"
alias glgg="git log --graph --color"
alias glo="git log --oneline --decorate --color"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias grb="git rebase"
alias grbi="git rebase -i"
alias grhh="git reset --hard HEAD"

_fzf_complete_mix() {
  _fzf_complete --reverse -- "$@" < <(
    mix help | \
        grep "^mix [a-zA-Z]" --color=never | \
        sed "s/^[^ ]* //" | \
        sed "s/#.*//"
  )
}

_fzf_complete_mix_post() {
  awk '{print $NF}'
}

[ -f "/home/cobbweb/.ghcup/env" ] && source "/home/cobbweb/.ghcup/env" # ghcup-env
