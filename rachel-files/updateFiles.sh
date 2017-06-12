#!/bin/bash

# Check if we are in the right directory
if [[ ! $(ls updateFiles.sh 2>/dev/null) ]]; then echo "[!] Error - You must run the script for the directory <path-to-RACHEL-Recovery-USB>/rachel-files"; exit 1; fi

# Update cap-rachel-configure.sh
echo;echo "[+] Update cap-rachel-configure.sh"
wget https://raw.githubusercontent.com/rachelproject/rachelplus/master/cap-rachel-configure.sh -O cap-rachel-configure.sh

# Update createUSB.sh
echo;echo "[+] Update createUSB.sh"
wget https://raw.githubusercontent.com/rachelproject/rachelplus/master/scripts/createUSB.sh -O createUSB.sh

# Update contentshell
echo;echo "[+] Update contentshell"
cd contentshell
git pull
echo; exit 0