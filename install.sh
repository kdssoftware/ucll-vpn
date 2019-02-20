#!/bin/bash
if [ "$EUID" -ne 0 ];then
        tput setaf 3
        echo "Please run as root to run"
  exit
fi
tput clear
VERBOSE="false"
HOME=$(eval echo "~$different_user")
while getopts "hv" OPTION; do
	case $OPTION in
		h)
			#HELP
			tput cup 0 0
			tput rev
			echo "UCLL-VPN: install.sh"
			tput sgr0
			tput cup 1 0
			echo "OPTIONS:"
			tput cup 2 0
			echo "-h : shows this message"
			tput cup 3 0
			echo "-v : shows more output"
			tput cup 5 0
			exit
			;;
		v)
			VERBOSE="true"
			;;
	esac
done
tput cup 0 0 
tput rev
echo "        Give your student username:       "
tput cup 1 17
tput sgr0
read user
tput cup 2 0
tput sgr0
if [ $VERBOSE = "true" ]; then
	tput setaf 3
	printf " =>    setting up for ${user}\n"
fi
if [ ! -d "${HOME}/.ucll-vpn" ]; then
	if [ $VERBOSE = "true" ]; then
		tput setaf 3
		printf " =>    creating directory in ${HOME}" 
		printf " =>    directory name: .ucll-vpn"
	fi
	mkdir ${HOME}/.ucll-vpn

fi
tput sgr0
printf "\n\n\n =>    installing ucll-vpn\n"
if [ $VERBOSE = "true" ]; then
	tput setaf 3
	printf "\n =>    creating user.txt"
	printf "\n =>    putting ${user} in user.txt"
	printf "\n =>    creating dns.txt\n"
	touch ${HOME}/.ucll-vpn/dns.txt
fi
tput sgr0
echo ${user} > ${HOME}/.ucll-vpn/user.txt 
if [ $VERBOSE = "true" ]; then
	tput setaf 3
	printf "\n =>    copying ucll-vpn to /usr/bin\n"
fi
cp ./ucll-vpn /usr/bin
if [ $VERBOSE = "true" ]; then
	tput setaf 3
	printf " =>    making /usr/bin/ucll-vpn executable"
fi
chmod +x /usr/bin/ucll-vpn
tput rev
tput setaf 3
printf "\n\n                                          \n"  
printf      "        DONE: 'ucll-vpn' to run           \n"
printf      "                                          \n\n"
