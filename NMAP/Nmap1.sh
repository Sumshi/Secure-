# To establish a full TCP connection with the target port to determine if it is open use nmap -sT
┌──(kali㉿kali)-[~]
└─$ nmap -sT 192.168.100.195/24
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-10-11 08:09 EDT
Nmap scan report for 192.168.100.1
Host is up (0.023s latency).
Not shown: 998 filtered tcp ports (no-response)
PORT    STATE SERVICE
53/tcp  open  domain
443/tcp open  https

Nmap scan report for 192.168.100.255
Host is up (0.030s latency).
Not shown: 999 closed tcp ports (conn-refused)
PORT    STATE    SERVICE
514/tcp filtered shell

Nmap done: 256 IP addresses (2 hosts up) scanned in 43.92 seconds
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
