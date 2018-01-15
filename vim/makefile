BREWCMD := @brew
LINKCMD := @ln -nsf

install: link
	$(BREWCMD) install --HEAD neovim
upgrade: install
	$(BREWCMD) reinstall --HEAD neovim
link: $(wildcard *.vim)
%.vim:
	$(LINKCMD) "$(realpath $@)" "$(HOME)/.config/nvim/$@"

.PHONY: upgrade install link
