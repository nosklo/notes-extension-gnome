#!/bin/bash

glib-compile-schemas ./notes@maestroschan.fr/schemas

if (( $EUID == 0 )); then
	INSTALL_DIR="/usr/share/gnome-shell/extensions"
else
	INSTALL_DIR="$HOME/.local/share/gnome-shell/extensions"
fi
mkdir -p $INSTALL_DIR

echo "Installing extension files in $INSTALL_DIR/notes@nosklo.info"
cp -r notes@nosklo.info $INSTALL_DIR

echo "Done."
exit 0

