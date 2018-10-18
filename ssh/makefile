BREWCMD := @brew
LINKCMD := @ln -nsf

install: link ssh

link: $(wildcard *.ssh) 
%.ssh:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.ssh/$*"

ssh: link
	+$(MAKE) -C ~/.ssh

.PHONY: upgrade install link
