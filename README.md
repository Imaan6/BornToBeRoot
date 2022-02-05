# BornToBeRoot
AppArmor Setup:
https://linuxhint.com/debian_apparmor_tutorial/
	TO CHECK APPARMOR STATUS:
		"sudo apparmor_status"

Ssh setup :
https://phoenixnap.com/kb/how-to-enable-ssh-on-debian
	disable root login:
https://www.ibm.com/docs/en/db2/11.1?topic=installation-enable-disable-remote-root-login
              TO CHECK SSH STATUS :
"sudo uff status numbered"
		TO CHECK IF SSH PORT IS WELL CONFIGURED TO 4242:
		"sudo grep Port /etc/ssh/sshd_config"

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

TTY?
https://www.youtube.com/watch?v=N1bz1DTD8Io

CRONTAB: 
https://crontab.guru/every-10-minutes
