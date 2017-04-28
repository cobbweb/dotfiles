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
set -gx EDITOR vim
set -gx VISUAL $EDITOR
set -gx NODE_ENV local
set -gx PATH ~/.local/bin $PATH

set -gx fish_color_param $magenta


# SETUP AUTOJUMP
source /usr/local/share/autojump/autojump.fish


# SETUP iTerm2 INTEGRATION
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
