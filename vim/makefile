BREWCMD := @brew
LINKCMD := @ln -nsf

install: init link plug venv
	$(BREWCMD) install neovim
upgrade:
	$(BREWCMD) reinstall neovim
init:
	mkdir -p "$(HOME)/.config/nvim"
link: $(wildcard *.vim)
%.vim: init
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
	~/.virtualenvs/neovim3/bin/pip install frosted
	~/.virtualenvs/neovim3/bin/pip install pyflakes
	~/.virtualenvs/neovim3/bin/pip install pydocstyle
	~/.virtualenvs/neovim3/bin/pip install flake8

.PHONY: upgrade install link init
