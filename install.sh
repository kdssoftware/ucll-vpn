#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
echo "give your student username:" 
read user
echo "setting up for ${user}..."
mkdir /usr/local/bin/ucll-vpn
echo "installing in /usr/local/bin/ucll-vpn"
echo ${user} > /usr/local/bin/ucll-vpn/user.txt 
cp ./ucll-vpn /usr/bin
chmod +x /usr/bin/ucll-vpn





