# History File Settings
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history # Save ZSH History after exit
setopt EXTENDED_HISTORY # More data in hist file (timestamp, elapsed time)
SAVEHIST=5000 # How many lines to save in hist file
HISTSIZE=2000 # How many lines to remember in current session
setopt SHARE_HISTORY # Share hist file across all ZSH sessions
setopt APPEND_HISTORY # Append, rather than overwrite, hist file on exit
setopt INC_APPEND_HISTORY # Write commands to hist file as typed
setopt HIST_EXPIRE_DUPS_FIRST # Expire dup lines first
setopt HIST_IGNORE_DUPS # Don't store dup lines
setopt HIST_FIND_NO_DUPS # Ignore dup lines when searching
setopt HIST_REDUCE_BLANKS # Remove blanks lines from hist
setopt HIST_VERIFY # Don't immediately run commands from hist (e.g. !!, !$, !5)
