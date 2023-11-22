#!/usr/bin/env bash

tar -xf emacs_config.tar \
	cp -r .emacs.d ~/ \
	&& echo "[+] Sucessfully instaled!" \
	|| echo "[-] Error!"
