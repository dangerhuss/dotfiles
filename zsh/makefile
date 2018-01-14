LINKCMD := @ln -nsf
BREWCMD := @brew
DOTFILES := $(wildcard *.zsh)

%: link
install:
	$(BREWCMD) install zsh || (echo "Install failed: $$"; exit 1)
upgrade: 
	-$(BREWCMD) upgrade zsh
link: $(DOTFILES) 
zshrc.zsh:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.zshrc"

.PHONY: upgrade link $(DOTFILES)
