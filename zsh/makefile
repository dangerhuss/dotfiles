BREWCMD := @brew
LINKCMD := @ln -nsf

install: link
	-$(BREWCMD) install zsh
	git submodule update --recursive --init
upgrade:
	-$(BREWCMD) upgrade zsh
	git submodule update --recursive --init

link: $(wildcard *.zsh)
%.zsh:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.$*"

.PHONY: upgrade install link
