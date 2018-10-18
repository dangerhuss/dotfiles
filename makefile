TOPTARGETS := install link upgrade
SUBDIRS := $(subst /.,,$(wildcard */.))

LINKCMD := @ln -nsf
BREWCMD := @brew

$(TOPTARGETS): brew zsh python vim $(SUBDIRS)
$(SUBDIRS):
	@if [ -f '$@/makefile' ]; then $(MAKE) -C $@ LINKCMD="$(LINKCMD)" BREWCMD="$(BREWCMD)"; fi 

BREW := $(shell command -v brew 2> /dev/null)
brew:
ifndef BREW
	/usr/bin/ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
endif

install: brew
	brew install ag
	brew install tree

help:
	@echo $(SUBDIRS)
%: help


.PHONY: $(TOPTARGETS) $(SUBDIRS) brew help

