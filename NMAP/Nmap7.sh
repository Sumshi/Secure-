# ping scan, checks which hosts in the network are up , uses nmap -sn

┌──(kali㉿kali)-[~]
└─$ sudo nmap -sn 10.0.0.0/24 
[sudo] password for kali: 
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-10-11 10:12 EDT
Nmap scan report for 10.0.0.1
Host is up (0.0014s latency).
MAC Address: 00:00:00:00:00:01 (Vendor1)
Nmap scan report for 10.0.0.2
Host is up (0.00052s latency).
MAC Address: 00:00:00:00:00:02 (Vendor2)
Nmap scan report for 10.0.0.254
Host is up (0.00064s latency).
MAC Address: 00:00:00:00:00:03 (Vendor3)
Nmap scan report for 10.0.0.128
Host is up.
Nmap done: 256 IP addresses (4 hosts up) scanned in 28.14 seconds

: '
Scan Type: The command nmap -sn performs a ping scan (also known as a no port scan) on the specified subnet (10.0.0.0/24). This scan identifies which hosts are up and active without probing their ports.

Scan Results:

The output lists several active hosts within the subnet:
10.0.0.1, 10.0.0.2, and 10.0.0.254 are reported as up, with their respective MAC addresses and associated vendor information (in this case, all identified as VMware).
10.0.0.128 is also reported as up, but no MAC address is provided in this line.
The latency for each host indicates how quickly Nmap received a response from each.
Summary: The scan identified 4 active hosts out of a total of 256 IP addresses in the /24 subnet. The scan completed in 28.14 seconds.
'