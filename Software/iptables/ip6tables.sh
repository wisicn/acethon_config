ip6tables -P INPUT DROP
ip6tables -P FORWARD DROP
ip6tables -P OUTPUT ACCEPT
ip6tables -F INPUT
ip6tables -F FORWARD
ip6tables -F OUTPUT
ip6tables -A INPUT -i eth0 -m state --state ESTABLISHED,RELATED -j ACCEPT
ip6tables -A INPUT -i lo -s ::/0 -d ::/0 -j ACCEPT
ip6tables -A INPUT -i eth0 -s ::1/128 -j DROP
ip6tables -A INPUT -p tcp -s ::/0 -d ::/0 --destination-port 80 --syn -j ACCEPT
ip6tables -A INPUT -p tcp -s ::/0 -d ::/0 --destination-port 443 --syn -j ACCEPT
ip6tables -A INPUT -p tcp -s ::/0 -d ::/0 --destination-port 10822 --syn -j ACCEPT
ip6tables -A INPUT -p tcp -s ::/0 -d ::/0 --destination-port 5298 --syn -j ACCEPT
ip6tables -A INPUT -p udp --sport 123 -j ACCEPT
ip6tables -A INPUT -p icmpv6 -j ACCEPT
ip6tables -A INPUT -s ::/0 -d ::/0 -p udp -j DROP
ip6tables -A INPUT -s ::/0 -d ::/0 -p tcp --syn -j DROP
