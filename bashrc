# Functions
if [ -f ~/.bash/.functions ]; then
      source ~/.bash/functions
fi

# Aliases
source ~/.aliases

# Custom prompt
if [ -f ~/.bash/.functions ]; then
      source ~/.bash/prompt.bash
fi

# Allow local customizations in the ~/.shell_local_after file
if [ -f ~/.shell_local_after ]; then
      source ~/.shell_local_after
fi

# Allow local customizations in the ~/.bashrc.local
if [ -f ~/.bashrc.local ]; then
      source ~/.bashrc.local
fi
