#!/bin/bash
#run the iptables.sh and ip6tables.sh first
#save the iptables/ip6tables rules by these two command
#iptables-save > /etc/iptables.up.rules
#ip6tables-save > /etc/ip6tables.up.rules
#in debian, restore them with this scripts /etc/network/if-pre-up.d/iptables
/sbin/iptables-restore < /etc/iptables.up.rules
/sbin/ip6tables-restore < /etc/ip6tables.up.rules

