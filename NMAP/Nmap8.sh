# Aggressive scan
# combines various scans with version detections, OS detection, script scanning etc
# use nmap -A

┌──(kali㉿kali)-[~]
└─$ sudo nmap -A 10.0.0.0/24
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-10-11 10:16 EDT
Nmap scan report for 10.0.0.1
Host is up (0.015s latency).
All 1000 scanned ports on 10.0.0.1 are in ignored states.
Not shown: 1000 filtered tcp ports (no-response)
MAC Address: 00:00:00:00:00:01 (Vendor1)
Too many fingerprints match this host to give specific OS details
Network Distance: 1 hop

TRACEROUTE
HOP RTT      ADDRESS
1   15.41 ms 10.0.0.1

Nmap scan report for 10.0.0.2
Host is up (0.0082s latency).
Not shown: 999 closed tcp ports (reset)
PORT   STATE SERVICE VERSION
53/tcp open  domain?
MAC Address: 00:00:00:00:00:02 (Vendor2)
Aggressive OS guesses: VMware Player virtual NAT device (98%), Microsoft Windows XP SP3 or Windows 7 or Windows Server 2012 (93%), DD-WRT v24-sp2 (Linux 2.4.37) (91%), Microsoft Windows XP SP3 (91%), Actiontec MI424WR-GEN3I WAP (91%), Linux 3.2 (90%), DVTel DVT-9540DW network camera (89%), Linux 4.4 (89%), BlueArc Titan 2100 NAS device (88%)
No exact OS matches for host (test conditions non-ideal).
Network Distance: 1 hop

TRACEROUTE
HOP RTT     ADDRESS
1   8.23 ms 10.0.0.2

Nmap scan report for 10.0.0.254
Host is up (0.00049s latency).
All 1000 scanned ports on 10.0.0.254 are in ignored states.
Not shown: 1000 filtered tcp ports (no-response)
MAC Address: 00:00:00:00:00:03 (Vendor3)
Too many fingerprints match this host to give specific OS details
Network Distance: 1 hop

TRACEROUTE
HOP RTT     ADDRESS
1   0.49 ms 10.0.0.254

Nmap scan report for 10.0.0.128
Host is up (0.00010s latency).
All 1000 scanned ports on 10.0.0.128 are in ignored states.
Not shown: 1000 closed tcp ports (reset)
Too many fingerprints match this host to give specific OS details
Network Distance: 0 hops

OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 256 IP addresses (4 hosts up) scanned in 192.98 seconds

