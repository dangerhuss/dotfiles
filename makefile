TOPTARGETS := all link install upgrade
SUBDIRS := $(subst /.,,$(wildcard */.))

LINKCMD := @echo ln -nsf
BREWCMD := @echo brew

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	@if [ -f '$@/makefile' ]; then $(MAKE) -C $@ LINKCMD="$(LINKCMD)" BREWCMD="$(BREWCMD)" $(MAKECMDGOALS); fi 
help:
	@echo $(SUBDIRS)
%: help


.PHONY: $(TOPTARGETS) $(SUBDIRS) help

