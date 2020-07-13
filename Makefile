install: install-zsh install-git

install-zsh:
	cp -n `pwd`/zsh/zsh-local-template ~/.zsh-local
	rm -f ~/.zshrc ~/.zsh-custom
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	ln -s `pwd`/zsh/custom ~/.zsh-custom


install-git:
	cp -n `pwd`/git/git-local-template ~/.git-local
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	rm -f ~/.gitignore
	ln -s `pwd`/git/gitignore ~/.gitignore
