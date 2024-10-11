# To analyze open ports to determine the services and versions running use nmap -sV

──(kali㉿kali)-[~]
└─$ sudo nmap -sV 10.0.0.5
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-10-11 09:06 EDT
Nmap scan report for 10.0.0.5
Host is up (0.0000080s latency).
All 1000 scanned ports on 10.0.0.5 are in ignored states.
Not shown: 1000 closed tcp ports (reset)

Service detection performed. Please report any incorrect results at https://nmap.org/submit/.
Nmap done: 1 IP address (1 host up) scanned in 13.98 seconds

┌──(kali㉿kali)-[~]

: '
Scan Type: The command nmap -sV performs service version detection on open ports to identify specific service software and version.
Scan Results:
Host Status: The host 10.0.0.5 is active with very low latency (0.0000080s).
Port Status: All 1000 scanned TCP ports are closed.
This output indicates no open services on the host, so no version information could be collected. The host has TCP ports that are closed (reset), suggesting minimal or no externally accessible services.
'