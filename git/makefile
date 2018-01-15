BREWCMD := @brew
LINKCMD := @ln -nsf

install: link
	$(BREWCMD) install git
	git submodule init
upgrade: install
	-$(BREWCMD) upgrade git
	git submodule update

link: $(wildcard *.git) 
%.git:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.$*"

.PHONY: upgrade install link
