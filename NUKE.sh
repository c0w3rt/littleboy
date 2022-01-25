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
srm -r $path
srm ~/.zsh_history
srm ~/.bash_history
srm /root/.zsh_history
find / -iname "littleboy" -exec srm -r {} \;

