#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/TTF
xset +fp ~/.local/share/fonts
xset fp rehash

[[ -f ~/.Xdefaults ]] && xrdb -merge ~/.Xdefaults

xsetroot -cursor_name left_ptr

exec i3

