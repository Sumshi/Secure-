# Uses third party hosts to send packets making the scan stealthy, use nmap -sl

─$ sudo nmap -sL 10.0.0.0/24
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-10-11 09:10 EDT
Nmap scan report for 10.0.0.0
Nmap scan report for 10.0.0.1
Nmap scan report for 10.0.0.2
Nmap scan report for 10.0.0.3
Nmap scan report for 10.0.0.4
Nmap scan report for 10.0.0.5
Nmap scan report for 10.0.0.6
Nmap scan report for 10.0.0.7
Nmap scan report for 10.0.0.8
Nmap scan report for 10.0.0.9
Nmap scan report for 10.0.0.10
Nmap scan report for 10.0.0.11
Nmap scan report for 10.0.0.12
Nmap scan report for 10.0.0.13
Nmap scan report for 10.0.0.14
Nmap scan report for 10.0.0.15
Nmap scan report for 10.0.0.16
Nmap scan report for 10.0.0.17
Nmap scan report for 10.0.0.18
Nmap scan report for 10.0.0.19
Nmap scan report for 10.0.0.20
Nmap scan report for 10.0.0.21
Nmap scan report for 10.0.0.22
Nmap scan report for 10.0.0.23
Nmap scan report for 10.0.0.24
Nmap scan report for 10.0.0.25
Nmap scan report for 10.0.0.26
Nmap scan report for 10.0.0.27
Nmap scan report for 10.0.0.28
Nmap scan report for 10.0.0.29
Nmap scan report for 10.0.0.30
Nmap scan report for 10.0.0.31
Nmap scan report for 10.0.0.32
Nmap scan report for 10.0.0.33
Nmap scan report for 10.0.0.34
Nmap scan report for 10.0.0.35
Nmap scan report for 10.0.0.36
Nmap scan report for 10.0.0.37
Nmap scan report for 10.0.0.38
Nmap scan report for 10.0.0.39
Nmap scan report for 10.0.0.40
Nmap scan report for 10.0.0.41
Nmap scan report for 10.0.0.42
Nmap scan report for 10.0.0.43
Nmap scan report for 10.0.0.44
Nmap scan report for 10.0.0.45
Nmap scan report for 10.0.0.46
Nmap scan report for 10.0.0.47
Nmap scan report for 10.0.0.48
Nmap scan report for 10.0.0.49
Nmap scan report for 10.0.0.50

# scans above goes for the whole subnet 255
: '
The command nmap -sL performs a list scan over the specified subnet 10.0.0.0/24. This type of scan does not send packets to the hosts; instead, it resolves IP addresses to hostnames or lists them without probing them.
Scan Results:
The output lists the IP addresses in the range from 10.0.0.0 to 10.0.0.50, indicating that these are the hosts in that subnet.
Each line corresponds to a host that Nmap has identified within the specified range, but it does not show the status of ports since no packets were sent.
This scan is useful for quickly identifying the range of IP addresses available within a subnet without interacting with the devices, making it a stealthy reconnaissance method.
identifies and lists all IP addresses in a specified subnet without sending any packets to those hosts. This makes it a useful tool for reconnaissance, as it allows you to see which IP addresses are part of the subnet, providing insight into the network topology without actively probing the devices.
'