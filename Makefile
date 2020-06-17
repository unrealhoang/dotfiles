default: remove
	current_path=$(PWD)
	ln -s "$(PWD)/dotconfig/alacritty" ${HOME}/.config
	ln -s "$(PWD)/dotconfig/nvim" ${HOME}/.config
	ln -s "$(PWD)/git/.gitconfig" ${HOME}/.gitconfig
	ln -s "$(PWD)/tmux/.tmux.conf" ${HOME}/.tmux.conf
	ln -s "$(PWD)/vim/.vim" ${HOME}/.vim
	ln -s "$(PWD)/vim/.vimrc" ${HOME}/.vimrc
	ln -s "$(PWD)/zsh/.zshrc" ${HOME}/.zshrc

remove:
	-rm ~/.config/alacritty
	-rm ~/.config/nvim
	-rm ~/.gitconfig
	-rm ~/.tmux.conf
	-rm ~/.vim
	-rm ~/.vimrc
	-rm ~/.zshrc
