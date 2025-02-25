PREFIX ?= /usr/local

.PHONY: check install clean

all: check install

check:
	./tests

install:
	mkdir -p $(PREFIX)/bin
	for f in forkm*; do \
		install -m 0755 "$$f" $(PREFIX)/bin/"$$f"; \
	done

# TODO doc (man pages)

clean:
	rm -f $(PREFIX)/bin/forkm*
