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

## Git configuration

Tips and tricks for configuring Git.

### Local configuration file

Local configuration file (`~/.git-local`, copied from `git/git-local-template`)
might be useful for setting up specific configuration for each machine that
should not be tracked by git in dotfiles repository.

How to save configuration into specific config file:
```bash
git config -f ~/.git-local user.name "my_nickname"
git config -f ~/.git-local user.email "my_mail@specific_project.com"
```

#### Directory-level configuration

It might be useful to setup configuration per directory when you work for
multiple companies or if you have a set of repositories that require similar
configuration (for instance, you need the same hooks for them)

For instance, you have the following structure:
```
projects
├── company_a
│   ├── project1
│   └── project2
└── company_b
    ├── project1
    └── project2
```
And you want to add a configuration for each project in company_a directory.
Simply go to company_a directory, create a gitconfig file, and add your config
to it:
```bash
cd ~/projects/company_a/
touch gitconfig
git config -f gitconfig user.email "me@company_a.com"
```
In order to make git able to catch up this configuration file you will need to
add the following item to your `.git-local` file:

```ini
[includeIf "gitdir:~/projects/company_a/"]
        path = ~/projects/company_a/gitconfig
```
