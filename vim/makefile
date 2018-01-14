LINKCMD := @ln -nsf
BREWCMD := @brew
DOTFILES := $(wildcard *.vim)

%: install link
install:
	$(BREWCMD) install neovim/neovim/neovim
upgrade: 
	-$(BREWCMD) upgrade neovim/neovim/neovim
link: $(DOTFILES) 
init.vim:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.config/nvim/init.vim"

.PHONY: $(DOTFILES)
