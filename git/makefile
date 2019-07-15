BREWCMD := @brew
LINKCMD := @ln -nsf

install: link
	$(BREWCMD) install git
	git submodule update --recursive --init
upgrade:
	-$(BREWCMD) upgrade git
	git submodule update --recursive --init

link: $(wildcard *.git) 
%.git:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.$*"

.PHONY: upgrade install link
