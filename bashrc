# .bashrc
#
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#Bind commands
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

#Exports and things
export HISTIGNORE="&:ls:exit:lo:ll:history"
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# Exports stolen from Rick:
export EDITOR='/usr/bin/vim'
export PAGER=/usr/bin/less

#Display a PDF of a given man page
function pdfman() {
        man -t $@ | pstopdf -i -o /tmp/$1.pdf && open /tmp/$1.pdf
}

#Aliases that do things
alias ip='ipconfig getifaddr en0'
alias ipext='curl -s http://checkip.dyndns.org/ | grep -o '[0-9][0-9]*.[0-9][0-9]*.[0-9][0-9]*.[0-9]*''
alias ll='ls -AlhG'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias h='history'
alias vi='/usr/bin/vim'
alias texted='open /Applications/TextEdit.app'
alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
alias psgrep='ps aux |grep -v grep |grep -i'

#Aliases that go places
# redacted--just a bunch of ssh aliases to local boxes

# CLI colors
export CLICOLOR=true
# a black
# b red
# c green
# d brown
# e blue
# f magenta
# g cyan
# h light grey
# A bold black, usually shows up as dark grey
# B bold red
# C bold green
# D bold brown, usually shows up as yellow
# E bold blue
# F bold magenta
# G bold cyan
# H bold light grey; looks like bright white
# x default foreground or background
# Order: dir - symlink - socket - pipe - exec - block special - char special - exec setuid - exec setgid - public dir sticky bit - public dir no sticky bit
export LSCOLORS='exfxcxdxbxegedabagacad'

#Prompt and prompt colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  export PS1="\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\$YELLOWBOLD$CYANBOLD @ \$CYAN\h \w\[\033[0;32m\]$(__git_ps1)\n\$GREEN└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '"
}

prompt

export BASH_SILENCE_DEPRECATION_WARNING=1
