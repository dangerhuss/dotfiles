TOPTARGETS := all link install upgrade
SUBDIRS := $(subst /.,,$(wildcard */.))

LINKCMD := @echo ln -s
BREWCMD := @echo brew

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	@if [ -f '$@/makefile' ]; then $(MAKE) -C $@ LINKCMD="$(LINKCMD)" $(MAKECMDGOALS); fi 
help:
	@echo $(SUBDIRS)
%: help


.PHONY: $(TOPTARGETS)

