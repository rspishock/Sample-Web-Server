#! /bin/bash

# accept incoming http, https, and ssh connections
iptables -A INPUT -p TCP 80 -j ACCEPT
iptables -A INPUT -p TCP 443 -j ACCEPT
iptables -A INPUT -p TCP 22 -j ACCEPT

# drop outgoing ssh connections
iptables -A OUTPUT -p TCP --dport 22 -j DROP