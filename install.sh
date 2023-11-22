#!/usr/bin/env bash

echo "[*] CHECKING ESSENTIAL PACKAGES..."
[[ $(type -P tar) ]] && echo "[+] TAR INSTALLED" || { echo "[-] Install tar to continue!" ; exit 1 ;}
[[ $(type -P emacs) ]] && echo "[+] EMACS INSTALLED" || { echo "[-] Install emacs to continue!" ; exit 1 ;}

echo -e "\n[*] INSTALLING CONFIG FILE..."

tar -xf emacs_config.tar \
	&& cp -r .emacs.d ~/ \
	&& echo "[+] Sucessfully instaled!" \
	|| echo "[-] Error!"
