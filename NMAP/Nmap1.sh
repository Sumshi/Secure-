# To establish a full TCP connection with the target port to determine if it is open use nmap -sT
┌──(kali㉿kali)-[~]
└─$ nmap -sT 10.0.0.0/24
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-10-11 08:09 EDT
Nmap scan report for 10.0.0.1
Host is up (0.023s latency).
Not shown: 998 filtered tcp ports (no-response)
PORT    STATE SERVICE
53/tcp  open  domain
443/tcp open  https

Nmap scan report for 10.0.0.255
Host is up (0.030s latency).
Not shown: 999 closed tcp ports (conn-refused)
PORT    STATE    SERVICE
514/tcp filtered shell

Nmap done: 256 IP addresses (2 hosts up) scanned in 43.92 seconds

┌──(kali㉿kali)-[~]


: '
First Scan (nmap -sT):
Scan Type: Full TCP connection scan (-sT).
Results: Two live hosts detected:
Host 1: Has ports 53 (DNS) and 443 (HTTPS) open.
Host 2: Has port 514 filtered, indicating the port may be firewalled or restricted.
Duration: Scan completed in around 44 seconds.
'