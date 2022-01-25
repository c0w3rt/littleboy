#!/bin/bash
apt install secure-delete -y
clear
echo '██╗     ██╗████████╗████████╗██╗     ███████╗██████╗  █████╗ ██╗   ██╗'
echo '██║     ██║╚══██╔══╝╚══██╔══╝██║     ██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝'
echo '██║     ██║   ██║      ██║   ██║     █████╗  ██████╦╝██║  ██║ ╚████╔╝ '
echo '██║     ██║   ██║      ██║   ██║     ██╔══╝  ██╔══██╗██║  ██║  ╚██╔╝  '
echo '███████╗██║   ██║      ██║   ███████╗███████╗██████╦╝╚█████╔╝   ██║   '
echo '╚══════╝╚═╝   ╚═╝      ╚═╝   ╚══════╝╚══════╝╚═════╝  ╚════╝    ╚═╝   '
read -p 'path to sensitive information: ' path
srm -r -v $path
srm -v ~/.zsh_history
srm -v ~/.bash_history
srm -v /root/.zsh_history
find / -iname "littleboy" -exec srm -r -v {} \;

