# UCLL-VPN

Info
-
Only **for Linux**

ucll-vpn V0.4

HOW TO USE
-
**INSTALLATION:**

Clone all files in a folder
```
apt-get install sshuttle
```
```
sh ./install.sh
```
Options for **installation**:
```
-v : verbose (more output)
-h : help message
```


**HOW TO RUN:**

To run the app:
```
ucll-vpn
```
Options for **ucll-vpn**:
```
-v : verbose (more output)
-d : uses the Cloudfare secure DNS (1.1.1.1)
-h : help message
```
Anonymity
-
leia.uclllabs.be **monitors all network traffic**, with supervision in the exam-period.

If you intent to use this to get internet at your exams and want to be anonymous:


**Change your IP**: 

Use a vpn gateway before the ucll-vpn tunnel.

OR use **TOR-browser**.

> Be sure that your vpn has it's own dns server and doesnt keep logs

> If your vpn doesnt support it own dns server use the **-d** option

> change your DNS server on: ```cat /etc/resolv.conf``` (next update will do this automatically)


**Change your Useragent** : 

> Firefox: change in *about:config* *general.useragent.override*

> Chrome: ```/usr/bin/google-chrome-stable --user-agent="_USER_AGENT_STRING_" %U```
 
> List of Useragents: https://udger.com/resources/ua-list
      

Notes
-
How to check your ip in the leia.uclllabs.be server for anonymity:
```
$ netstat -a | <YOUR_VPN_ADDRESS_HERE>
```
```
$ netstat -a | <YOUR_ACTUAL_IP_ADDRESS_HERE>
```
It should only find your vpn's ip address.

**info about notes**

shows all incoming and outgoing connections in the current server: ```netstat -a```

Finds your ip : ```| grep <IP_ADDRESS> ```

