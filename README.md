# .dotfiles
Just another dotfiles repo, using Dotbot (https://github.com/anishathalye/dotbot)

Some of the configuration assumes things are set up a certain way, so it may not work for you out of the box, but feel free to use it as a starting point.

## How to Use it

Just clone the repo into you home directory and run `install`. It will try to symlink all the files correctly. If you have an existing config file there (e.g. `.zshrc`) then it will either give you an error or overwrite the file, so buyer beware. You can modify the overwrite behavior by changing it in the `install.conf.yaml` file (remove `force: true`) before running `install`. 

If you want to try Dotbot using your exsting dotfiles, check out the awesome script at https://github.com/Vaelatern/init-dotfiles.

## What it configures

### ZSH
### VIM
### TMUX
### SSH
