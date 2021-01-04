#! /bin/bash

# flush existing chains 
iptables -F

# accept incoming http, https, and ssh connections
iptables -A INPUT -p TCP --dport 80 -j ACCEPT
iptables -A INPUT -p TCP --dport 443 -j ACCEPT
# replace <SAMPLE IP> with IP address from workstation
iptables -A INPUT -p TCP --dport 22 -s <SAMPLE IP> -j ACCEPT
iptables -A INPUT -p TCP --dport 22 -j DROP

# drop outgoing ssh connections
iptables -A OUTPUT -p TCP --dport 22 -j DROP