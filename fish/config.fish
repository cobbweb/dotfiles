alias l="ls -al"
alias vim="/usr/bin/nvim"
alias nra="npm-run-all"
alias vh="/usr/bin/nvim ."
alias refmt="bsrefmt"

set -gx NODE_ENV 'local'
set -gx EDITOR 'nvim'
set -gx VISUAL 'nvim'
set -gx NVM_DIR "~/.nvm"


# function nvm
#   bass source /usr/share/nvm/nvm.sh --no-use ';' nvm $argv
# end

set -gx PATH ~/.yarn/bin/ $PATH

status --is-interactive; and source (pyenv init -|psub)
