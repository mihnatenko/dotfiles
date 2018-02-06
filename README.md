# Dotfiles

My configuration files for various utilities

## Installation

* Install zsh and oh-my-zsh (if not installed)
* Clone repository. It uses submodules, so `--recursive` flag should be added:
```
git clone --recursive git@github.com:mihnatenko/dotfiles.git
```
* Go to `dotfiles` directory and install needed configuration files, e.g.
```
make install-zsh
```
Or install all configurations:
```
make install
```
## TODO
* Add vim config
* Update submodules properly (probably `git pull --recurse-submodules` can be used)
