BREWCMD := @brew
LINKCMD := @ln -nsf

install: link plug venv
	$(BREWCMD) install neovim
	mkdir -p ~/.config/nvim
upgrade:
	$(BREWCMD) reinstall neovim
link: $(wildcard *.vim)
%.vim:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.config/nvim/$@"

plug:
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

venv:
	pip install virtualenv
	mkdir -p ~/.virtualenvs
	virtualenv ~/.virtualenvs/neovim2 -p python2
	~/.virtualenvs/neovim2/bin/pip install neovim
	virtualenv ~/.virtualenvs/neovim3 -p python3
	~/.virtualenvs/neovim3/bin/pip install neovim


	
	

.PHONY: upgrade install link
