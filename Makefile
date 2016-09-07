PREFIX = /usr/local

build:
	gcc main.c -o qwertysh
.PHONY: install
install: build
	mkdir -p $(PREFIX)/bin
	cp $< $(PREFIX)/bin/qwertysh
.PHONY: uninstall
uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/qwertysh
clean:
	rm qwertysh
all: install

