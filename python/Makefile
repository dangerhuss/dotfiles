BREWCMD := @brew

install:
	-$(BREWCMD) install python2
	-$(BREWCMD) install python3
	pip2 install -r requirements.txt
	pip3 install -r requirements.txt

upgrade:
	-$(BREWCMD) upgrade python2
	-$(BREWCMD) upgrade python3
	pip2 install -U -r requirements.txt
	pip3 install -U -r requirements.txt


.PHONY: upgrade install
