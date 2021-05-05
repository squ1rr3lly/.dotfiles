# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1

# Display output from stderr in Red
#This is neat, but often causes issues with output buffers
#exec 2>>( while read x; do print "\e[91m${x}\e[0m" > /dev/tty; done & )
