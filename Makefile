# forkm: fork management tool
# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2025 45mg
#
# This file is part of forkm.
#
# forkm is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 3
# as published by the Free Software Foundation.
#
# forkm is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with forkm. If not, see <http://www.gnu.org/licenses/>.

PREFIX ?= /usr/local
BASHCOMPDIR ?= /etc/bash_completion.d

.PHONY: check install clean

build: doc

check:
	./tests

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 forkm* $(DESTDIR)$(PREFIX)/bin/
	mkdir -p $(DESTDIR)$(BASHCOMPDIR)
	install -m 644 completions/bash/* $(DESTDIR)$(BASHCOMPDIR)

doc: # TODO (man pages)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/forkm*
	rm -f $(DESTDIR)$(BASHCOMPDIR)/forkm
