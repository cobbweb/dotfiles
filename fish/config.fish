###################################################
###################################################
##    _____      _     _                 _       ##
##   / ____|    | |   | |               | |      ##
##  | |     ___ | |__ | |____      _____| |__    ##
##  | |    / _ \| '_ \| '_ \ \ /\ / / _ \ '_ \   ##
##  | |___| (_) | |_) | |_) \ V  V /  __/ |_) |  ##
##   \_____\___/|_.__/|_.__/ \_/\_/ \___|_.__/   ##
##                                               ##
###################################################
###################################################


##
# Look in ./conf.d and ./functions for most things
##


# COLOR SHORTCUT VARS
set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)
set blue (set_color blue)


# ENVIRONMENT VARIABLES
set -gx EDITOR nvim
set -gx VISUAL $EDITOR
set -gx NODE_ENV local
set -gx PATH ~/.local/bin $PATH

set -gx fish_color_param $magenta

# Additional fzf integration
function fzf-complete -d 'fzf completion and print selection back to commandline'
  set -l complist (complete -C(commandline -c))
  set -l result
  string join -- \n $complist | sort | eval (__fzfcmd) -m --select-1 --exit-0 --header '(commandline)' | cut -f1 | while read -l r; set result $result $r; end

  set prefix (string sub -s 1 -l 1 -- (commandline -t))
  for i in (seq (count $result))
    set -l r $result[$i]
    switch $prefix
      case "'"
        commandline -t -- (string escape -- $r)
      case '"'
        if string match '*"*' -- $r >/dev/null
          commandline -t --  (string escape -- $r)
        else
          commandline -t -- '"'$r'"'
        end
      case '~'
        commandline -t -- (string sub -s 2 (string escape -n -- $r))
      case '*'
        commandline -t -- (string escape -n -- $r)
    end
    [ $i -lt (count $result) ]; and commandline -i ' '
  end

  commandline -f repaint
end


# SETUP AUTOJUMP
source /usr/local/share/autojump/autojump.fish

# Tweak fzf to use pt (platiumum search, respects .gitignore)
set -gx FZF_DEFAULT_COMMAND "rg --files --hidden --follow"
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND


# SETUP iTerm2 INTEGRATION
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
bind \t fzf-complete
bind \e\t complete
bind -M insert \t fzf-complete
bind -M insert \e\t complete
