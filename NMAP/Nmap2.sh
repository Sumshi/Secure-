# To send SYN packets to the target port to see if we will get a response to determine if it is open use nmap -sS

sudo nmap -sS 10.0.0.0/24
Starting Nmap 7.95 ( https://nmap.org ) at 2024-10-11 15:39 EAT
Nmap scan report for 10.0.0.1
Host is up (0.014s latency).
Not shown: 993 closed tcp ports (reset)
PORT     STATE    SERVICE
21/tcp   filtered ftp
22/tcp   filtered ssh
23/tcp   filtered telnet
53/tcp   open     domain
80/tcp   filtered http
443/tcp  open     https
8022/tcp filtered oa-system

Nmap scan report for 10.0.0.194
Host is up (0.017s latency).
Not shown: 998 closed tcp ports (reset)
PORT      STATE SERVICE
49152/tcp open  unknown
62078/tcp open  iphone-sync

Nmap done: 256 IP addresses (2 hosts up) scanned in 18.74 seconds

: '
Scan Type: SYN scan (-sS), which is faster and more stealthy, sending SYN packets to determine open ports.
Results: Two live hosts detected:
Host 1: Has ports 53 (DNS) and 443 (HTTPS) open, with additional filtered ports (FTP, SSH, Telnet, HTTP, and an unknown service on 8022).
Host 2: Has ports 49152 and 62078 open, used for specific network functions like device sync.
Duration: Scan completed in about 19 seconds.
'