root@ESILDESK4MJS:~# whoami
root
root@ESILDESK4MJS:~# sudo useradd -m -u 2000 user1
root@ESILDESK4MJS:~# sudo groupadd -g 3000 group1
# you can check whether the user is added or not by following command
root@ESILDESK4MJS:~# cat etc/passwd
# creating directory
root@ESILDESK4MJS:/# mkdir user1
root@ESILDESK4MJS:/# cd user1
# creating file
root@ESILDESK4MJS:/user1# echo "Hello World" > helloworld.txt
root@ESILDESK4MJS:/user1# ls -ltr
total 4
-rw-r--r-- 1 root root 12 Jun 18 12:16 helloworld.txt
#changing the file owner to user1(2000) and group1(3000)
root@ESILDESK4MJS:/user1# sudo chown 2000:3000 helloworld.txt
root@ESILDESK4MJS:/user1# ls -ltr
total 4
-rw-r--r-- 1 user1 group1 12 Jun 18 12:16 helloworld.txt
#  change the permissions of the file helloworld.txt
# chmod: The command used to change file permissions.
# 640: 6 means read (4) and write (2) permissions | 4 means read permission only by the group members | 0 means no permissions for other group users
root@ESILDESK4MJS:/user1# sudo chmod 640 helloworld.txt