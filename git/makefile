LINKCMD := @ln -nsf
BREWCMD := @brew
DOTFILES := $(wildcard *.git)

%: install link
install:
	$(BREWCMD) install git
upgrade:
	-$(BREWCMD) upgrade git
link: $(DOTFILES) 
gitconfig.git:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.gitconfig"

.PHONY: all install upgrade link $(DOTFILES)
