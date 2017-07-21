TOPTARGETS := all link install upgrade
SUBDIRS := $(subst /.,,$(wildcard */.))

LINKCMD := @echo ln -s

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	@if [ -f '$@/makefile' ]; then $(MAKE) -C $@ LINKCMD="$(LINKCMD)" $(MAKECMDGOALS); fi 
help:
	@echo $(SUBDIRS)
%: help


.PHONY: $(TOPTARGETS)

