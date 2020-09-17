# Prompt
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%3~%f%b %(!.%F{red}#%f.>) '
# RPROMPT='%*'

# Git status in RPROMPT
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

#setopt promptsubst

# Allow exported PS1 variable to override default prompt.
#if ! env | grep -q '^PS1='; then
#  PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%} %# '
#fi
