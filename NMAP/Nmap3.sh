# To send UDP packets to the target port to see if we will get a response to determine it is open 
# use nmap -sU

──(kali㉿kali)-[~]
└─$ sudo nmap -sU 10.0.0.5
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-10-11 09:02 EDT
Nmap scan report for 10.0.0.5
Host is up (0.0000060s latency).
All 1000 scanned ports on 10.0.0.5 are in ignored states.
Not shown: 1000 closed udp ports (port-unreach)

Nmap done: 1 IP address (1 host up) scanned in 13.28 seconds

┌──(kali㉿kali)-[~]

: '
Scan Type: The command nmap -sU is a UDP scan, checking for open or responsive UDP ports on the host.
Scan Results:
Host Status: The host 10.0.0.5 is online with a very low latency (0.0000060s).
Port Status: All 1000 scanned UDP ports are closed, as indicated by the "port-unreach" status.
This output suggests that no open UDP ports were detected on the host, which may indicate restricted or unused UDP services.
'