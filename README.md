AppArmor Setup:
https://linuxhint.com/debian_apparmor_tutorial/
	TO CHECK APPARMOR STATUS:
		"sudo apparmor_status"
Df
Ssh setup :
https://phoenixnap.com/kb/how-to-enable-ssh-on-debian
	disable root login:
https://www.ibm.com/docs/en/db2/11.1?topic=installation-enable-disable-remote-root-login
              TO CHECK SSH STATUS :
"sudo ufw status numbered"
		TO CHECK IF SSH PORT IS WELL CONFIGURED TO 4242:
		"sudo grep Port /etc/ssh/sshd_config"
			TO CONNECT FROM BASH TO VM using ssh:
		ssh iel-moha@127.0.0.1 -p 4242
What is Localhost or 127.0.0.1?
Localhost refers to the name of a computer itself. Localhost redirects to the IP address 127.0.0.1, which is also called the loopback address. Actually, any IPv4 address in block 127.0.0.0/8 is designated as a loopback address. Applications usually prefer to use 127.0.0.1 for their networking service. The IP address 127.0.0.1 is normally assigned to the loopback interface. A loopback interface is technically a closed circuit. This means any TCP or UDP packet arriving at the loopback interface (localhost or 127.0.0.1) will be routed to the computer itself without going to the outside network or on the internet.

Localhost is basically used by many software programs like web servers, database servers, etc. to provide their services. In most cases where multiple applications are using the localhost address, they can be configured to use different port numbers. This can be usually done by modifying their configuration files.

UFF SETUP:
To check uff status and what ports are allowed:
		sudo ufw status numbered 
Source: (https://linuxize.com/post/how-to-setup-a-firewall-with-ufw-on-debian-9/)
		Delete the new rule
sudo ufw delete 5

To Get HOSTNAME:
Use command "hostname" or "hostnamectl" to display current hostname.
TO CHANGE HOSTNAME:(use following command)
hostnamectl set-hostname {name-here}

			PASSWORD CONFIGURATIONS:
To change password expiration we must go to /etc/login.defs
To force users to use a strong pass I used :
https://ostechnix.com/force-users-use-strong-passwords-debian-ubuntu/
https://www.networkworld.com/article/2726217/how-to-enforce-password-complexity-on-linux.html
https://manpages.debian.org/testing/libpwquality-common/pwquality.conf.5.en.html

PS : The credit settings mean your users will get credits for using a mix of character types that can reduce the password length requirement.

			SUDO CONFIGURATIONS:


GROUPS AND USERS:
-To add a new group we use the command : "sudo groupadd group_name"
-To check if the group was created we use: "getent group"
-To add a user into a particular group we use "sudo usermod -aG group_name user_name"
-To check what groups a particular user belong to we use "groups":
The -a flag tells usermod to add a user to a group.
The -G flag specifies the name of the secondary group to which you want to add the user.
-To list all the users available we use: "cat /etc/passwd"
-To add a secure path : sudo visudo

TTY?
https://www.youtube.com/watch?v=N1bz1DTD8Io
https://www.youtube.com/watch?v=SYwbEcNrcjI

CRONTAB: 
https://crontab.guru/every-10-minutes


---------------------------------WRITING THE BASH SCRIPT--------------------------------
Create a file using a vi editor(or any other editor). Name script file with extension .sh
Start the script with #! /bin/sh
Write some code.
Save the script file as filename.sh
For executing the script type bash filename.sh
“#!” is an operator called shebang which directs the script to the interpreter location. 

To find the number of processor we use either lscpu or  cat /proc/cpuinfo ( the number of time the word processor appears is the number of processors we have)
