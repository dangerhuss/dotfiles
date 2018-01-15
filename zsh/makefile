BREWCMD := @brew
LINKCMD := @ln -nsf

install: link
	$(BREWCMD) install zsh
	git submodule init
upgrade: install
	-$(BREWCMD) upgrade zsh
	git submodule update

link: $(wildcard *.zsh)
%.zsh:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.$*"

.PHONY: upgrade install link
