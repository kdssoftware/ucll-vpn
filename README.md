# ucll-vpn
tunnelling using the leia.uclllabs.be
Info
-
Only **for Linux**
ucll-vpn V0.4

HOW TO INSTALL
-
clone all files in a folder
```
apt-get install sshuttle
```
```
sh ./install.sh
```
To run the app:
```
ucll-vpn
```

Options for installation:
```
-v : verbose (more output)
-h : help message
-d : uses the Cloudfare secure DNS (1.1.1.1)
```

Anonymity
-
leia.uclllabs.be **monitors all network traffic**, with supervision in the exam-period
If you intent to use this to get internet at your exams and want to be anonymous:

Change your **IP**: Use a vpn gateway before the ucll-vpn tunnel.
                    OR use **TOR-browser**.

> Be sure that your vpn has it's own dns server and doesnt keep logs

> If your vpn doesnt support it own dns server use the **-d** option

> Check your DNS server by: ```cat /etc/resolv.conf```


Change your **Useragent** : 

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
Info about

: shows all incoming and outgoing connections in the current server
```
netstat -a
```
Finds your ip : ```| grep <IP_ADDRESS> ```

