BREWCMD := @brew
LINKCMD := @ln -nsf

install: link
	$(BREWCMD) install tmux
upgrade:
	-$(BREWCMD) upgrade tmux

link: $(wildcard *.conf) 
%.conf:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.$*.conf"

.PHONY: upgrade install link
