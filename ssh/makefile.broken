BREWCMD := @brew
LINKCMD := @ln -nsf

install: link ssh

link: $(wildcard *.ssh) 
%.ssh:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.ssh/$*"

ssh: link
	@mkdir -p "$(HOME)/.ssh"
	+$(MAKE) -C "$(HOME)/.ssh"

.PHONY: upgrade install link
