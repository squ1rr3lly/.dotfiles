# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1

# Display output from stderr in RED
#exec 2>>( while read X; do print "\e[91m${X}\e[0m" > /dev/tty; done & )
