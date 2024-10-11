# OS fingerprinting, to determine the Operating system and the version use nmap -O

┌──(kali㉿kali)-[~]
└─$ sudo nmap -O 10.0.0.5
[sudo] password for kali:
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-10-11 09:01 EDT
Nmap scan report for 10.0.0.5
Host is up (0.000083s latency).
All 1000 scanned ports on 10.0.0.5 are in ignored states.
Not shown: 1000 closed tcp ports (reset)
Too many fingerprints match this host to give specific OS details
Network Distance: 0 hops

OS detection performed. Please report any incorrect results at https://nmap.org/submit/.
Nmap done: 1 IP address (1 host up) scanned in 14.70 seconds

┌──(kali㉿kali)-[~]

: '
Scan Results:
Host Status: The host is active with a very low latency response time (0.000083s).
Port Status: All 1000 scanned ports are closed (reset), indicating no open TCP ports were detected.
OS Detection: Nmap could not identify a specific OS due to too many matching fingerprints.
'