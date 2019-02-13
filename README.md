# ucll-vpn
tunnelling using the leia.uclllabs.be
-----------------------------------------
version 0.2

HOW TO INSTALL
---------------
```
apt-get install sshuttle
```
```
chmod +x install.sh
```
```
./install.sh
```
NOTES
-----------
If you intent to use this to get internet at your exams, use an extra vpn behind it.
leia.uclllabs.be monitors all network traffic, with supervision in the exam-period


How to check your ip in the leia.uclllabs.be for anonymity:
```
$ netstat -a | <YOUR_VPN_ADDRESS_HERE>
```
```
$ netstat -a 2>/dev/null | <YOUR_ACTUAL_IP_ADDRESS_HERE>
```
It should only find your vpn's ip address.
info: 
```netstat -a``` shows all incoming and outgoing connections in the current server
```| grep <YOUR_IP>``` finds your ip    
