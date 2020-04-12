# zsh configuration for iTerm2/macOS
#
#
#
#
#

#export PATH="/usr/local/opt/openjdk/bin:$PATH"
#export PATH="/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"

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
alias la='ls -al -G'
alias ls='ls -G'
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

function zle-keymap-select zle-line-init
{
# change cursor shape in iTerm2
case $KEYMAP in
  vicmd)      print -n -- "\E]50;CursorShape=0\C-G";;  # block cursor
  viins|main) print -n -- "\E]50;CursorShape=1\C-G";;  # line cursor
esac

zle reset-prompt
zle -R
}

function zle-line-finish
{
  print -n -- "\E]50;CursorShape=0\C-G"  # block cursor
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'
# Use beam shape cursor for each new prompt.
_fix_cursor() {
	   echo -ne '\e[5 q'
   }

precmd_functions+=(_fix_cursor)

