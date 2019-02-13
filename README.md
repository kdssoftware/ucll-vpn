# ucll-vpn
tunnelling using the leia.uclllabs.be
-----------------------------------------
version 0.1
:: current state > no install yet, but works perfectly

HOW TO INSTALL
---------------
```
apt-get install sshuttle
```

create file executable:
```
chmod +x ucll-vpn-cli
```
type your r number in the file:
```
nohup sshuttle -r **r0123456**@leia.uclllabs.be:22345
```
NOTES
-----------
If you intent to use this to get internet at your exams, use an extra vpn behind it.
leia.uclllabs.be monitors all network traffic, with supervision in the exam-period


How to check your ip in the leia.uclllabs.be for anonymity:
```
$ netstat -tn 2>/dev/null | <YOUR_VPN_ADDRESS_HERE>
```
```
$ netstat -tn 2>/dev/null | <YOUR_ACTUAL_IP_ADDRESS_HERE>
```
It should only find your vpn's ip address.
