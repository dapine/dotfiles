nvim:
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim	
	cp init.vim ~/.config/nvim/

vim:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	cp vimrc ~/.vimrc

tmux:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	cp tmux.conf ~/.tmux.conf
