#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
VERBOSE="false"
#OPTIONS:
#-? / -h : help
#-v : verbose

while getopts "hv" OPTION; do
	case $OPTION in
		h)
			#HELP
			printf "UCLL-VPN\n"
			printf "--------\n"
			printf "OPTIONS:\n"
			printf "-h : shows this message\n"
			printf "-v : shows more output"
			;;
		v)
			VERBOSE="true"
			;;
	esac
done
printf "Give your student username:";read user
if [ $VERBOSE = "true" ]; then
	echo "setting up for ${user}..."
fi
#Potential improvments:
#check if $user is a real student number 
if [ ! -d "/usr/local/bin/ucll-vpn" ]; then
	if [ $VERBOSE = "true" ]; then
		echo "creating directory in /usr/local/bin" 
		echo "directory name: ucll-vpn"
	fi
	mkdir /usr/local/bin/ucll-vpn
fi
echo "installing ucll-vpn..."
if [ $VERBOSE = "true" ]; then
	echo "creating user.txt"
	echo "putting ${user} in user.txt"
fi
echo ${user} > /usr/local/bin/ucll-vpn/user.txt 
if [ $VERBOSE = "true" ]; then
	echo "copying ./ucll-vpn to the /usr/bin"
fi
cp ./ucll-vpn /usr/bin
if [ $VERBOSE = "true" ]; then
	echo "making /usr/bin/ucll-vpn executable"
fi
chmod +x /usr/bin/ucll-vpn
printf "DONE: 'ucll-vpn' to run\n"

