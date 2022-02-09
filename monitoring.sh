#! bin/bash
arch=$(uname -a)
cpu=$(cat /proc/cpuinfo | grep processor | wc -l)
vcpu=$(cat /proc/cpuinfo | grep processor | wc -l)
sudo=$(journalctl _COMM=sudo | wc -l)
network=$(hostname -I)
mac=$(ip a | grep link/ether | awk '{print $2}')
user=$(who | cut -d " " -f 1 | sort -u | wc -l)
cnx=$(netstat -a | grep ESTABLISHED | wc -l)
lvm=$(lsblk |grep lvm | awk '{if ($1) {print "yes";exit;} else {print "no"} }')
lastBoot=$(who -b | awk '{print $3" "$4}')
wall "
#Architecture: $arch
#CPU physical: $cpu
#vCPU : $vcpu
#Memory Usage:
#Disk Usage:
#CPU load:
#Last boot: $lastBoot
#LVM use: $lvm
#Connexion TCP: $cnx ESTABLISHED
#User log: $user
#Network: IP $network($mac)
#Sudo: $sudo cmd
"
