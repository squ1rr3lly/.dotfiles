# zsh configuration for nix 
#
#
#
#
#

ZSH_TMUX_AUTOSTART='true'

# Shell Options
#
# To temorarily set all options to default, such as if a script isn't runnign correctly, run "emulate -LR zsh"
#
# Case-Insensitive Globbing
unsetopt CASE_GLOB
#setopt GLOB_COMPLETE # Don't replace wildcards in cmd prompt
#
# Auto CD
setopt AUTO_CD
#
# AutoCorrect
#
#setopt CORRECT
#setopt CORRECT_ALL
#
#
# Aliases
#
#
#
alias la='ls -al --color'
alias ls='ls --color'
#
#
#
# VI Mode
#
bindkey -v
#
# Remove mode switching delay.
KEYTIMEOUT=5
# Change cursor shape for different vi modes.

