# ucll-vpn
tunnelling using the leia.uclllabs.be
-----------------------------------------
version 0.1
:: current state > no install yet, but works perfectly

HOW TO INSTALL
---------------
    ```apt-get install sshuttle```
create file executable:
    ```chmod +X ucll-vpn-cli```
type your r number in the file:
       ```xample: nohup sshuttle -r r0123456@leia.uclllabs.be:22345```

NOTES
-----------
If you intent to use this to get internet at your exams, use an extra vpn behind it.
leia.uclllabs.be monitors all network traffic, with supervision in the exam-period
