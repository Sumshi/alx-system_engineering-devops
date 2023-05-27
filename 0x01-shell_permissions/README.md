                                       shell permissions
                man or help:
 	chmod
 	sudo
 	su
	chown
	chgrp
	id
	groups
	whoami
	adduser
	useradd
	addgroup

                 Permissions
 	What do the commands chmod, sudo, su, chown, chgrp do
 	Linux file permissions
 	How to represent each of the three sets of permissions (owner, group, and oher) as a single digit
 	How to change permissions, owner and group of a file
 	Why can’t a normal user chown a file
 	How to run a command with root privileges
 	How to change user ID or become superuser
	
			TASKS
	0) Create a script that switches the current user to the user betty.
	1) Write a script that prints the effective username of the current user.
	2) Write a script that prints all the groups the current user is part of.
	3) Write a script that changes the owner of the file hello to the user betty
	4) Write a script that creates an empty file called hello.
	5) Write a script that adds execute permission to the owner of the file hello. The file hello will be in the working directory
	6) Write a script that adds execute permission to the owner and the group owner, and read permission to other users, to the file hello.
	7) Write a script that adds execution permission to the owner, the group owner and the other users, to the file hello, The file hello will be in the working directory
	8) Write a script that sets the permission to the file hello as follows:
        	Owner: no permission at all
		Group: no permission at all
		Other users: all the permissions
	The file hello will be in the working directory You are not allowed to use commas for this script
	9) Write a script that sets the mode of the file hello to this:
		-rwxr-x-wx 1 julien julien 23 Sep 20 14:25 hello
	10) Write a script that sets the mode of the file hello the same as olleh’s mode.
		The file hello will be in the working directory
		The file olleh will be in the working directory
	julien@ubuntu:/tmp/h$ ls -l
	total 8
	-rwxrw-r-- 1 julien julien 42 Sep 20 14:45 10-mirror_permissions
	-rwxr-x-wx 1 julien julien 23 Sep 20 14:25 hello
	-rw-rw-r-- 1 julien julien  0 Sep 20 14:43 olleh
	julien@ubuntu:/tmp/h$ ./10-mirror_permissions 
	julien@ubuntu:/tmp/h$ ls -l
	total 8
	-rwxrw-r-- 1 julien julien 42 Sep 20 14:45 10-mirror_permissions
	-rw-rw-r-- 1 julien julien 23 Sep 20 14:25 hello
	-rw-rw-r-- 1 julien julien  0 Sep 20 14:43 olleh
	julien@ubuntu:/tmp/h$ 
	Note: the mode of olleh will not always be 664. Make sure your script works for any mode.
	11) Create a script that adds execute permission to all subdirectories of the current directory for the owner, the group owner and all other users.
	Regular files should not be changed.
	12) Create a script that creates a directory called my_dir with permissions 751 in the working directory.
	13) Write a script that changes the group owner to school for the file hello        14) Write a script that changes the owner to vincent and the group owner to staff for all the files and directories in the working directory.
	julien@ubuntu:/tmp/h$ ls -l
	total 24
	-rwxrwxr-x 1 julien julien   36 Sep 20 15:06 100-change_owner_and_group
	drwx--x--x 2 julien julien 4096 Sep 20 14:49 dir0
	drwx--x--x 2 julien julien 4096 Sep 20 14:49 dir1
	drwx--x--x 2 julien julien 4096 Sep 20 14:49 dir2
	drwxr-x--x 2 julien julien 4096 Sep 20 14:59 my_dir
	-rw-rw-r-- 1 julien julien   23 Sep 20 14:25 hello
	julien@ubuntu:/tmp/h$ sudo ./100-change_owner_and_group 
	julien@ubuntu:/tmp/h$ ls -l
	total 24
	-rwxrwxr-x 1 vincent staff   36 Sep 20 15:06 100-change_owner_and_group
	drwx--x--x 2 vincent staff 4096 Sep 20 14:49 dir0
	drwx--x--x 2 vincent staff 4096 Sep 20 14:49 dir1
	drwx--x--x 2 vincent staff 4096 Sep 20 14:49 dir2
	drwxr-x--x 2 vincent staff 4096 Sep 20 14:59 my_dir
	-rw-rw-r-- 1 vincent staff   23 Sep 20 14:25 hello
	julien@ubuntu:/tmp/h$ 
	15) Write a script that changes the owner and the group owner of _hello to vincent and staff respectively.
	The file _hello is in the working directory
	The file _hello is a symbolic link
	julien@ubuntu:/tmp/h$ ls -l
	total 24
	-rwxrwxr-x 1 julien julien   44 Sep 20 15:12 101-symbolic_link_permissions
	-rw-rw-r-- 1 julien julien   23 Sep 20 14:25 hello
	lrwxrwxrwx 1 julien julien    5 Sep 20 15:10 _hello -> hello
	julien@ubuntu:/tmp/h$ sudo ./101-symbolic_link_permissions 
	julien@ubuntu:/tmp/h$ ls -l
	total 24
	-rwxrwxr-x 1 julien julien      44 Sep 20 15:12 101-symbolic_link_permissions
	-rw-rw-r-- 1 julien julien      23 Sep 20 14:25 hello
	lrwxrwxrwx 1 vincent  staff    5 Sep 20 15:10 _hello -> hello
	julien@ubuntu:/tmp/h$ 
	16) Write a script that changes the owner of the file hello to betty only if it is owned by the user guillaume
	-rwxrwxr-x 1 julien    julien      47 Sep 20 15:18 102-if_only 
	-rw-rw-r-- 1 guillaume julien      23 Sep 20 14:25 hello
	-rwxrwxr-x 1 julien julien      47 Sep 20 15:18 102-if_only 
	-rw-rw-r-- 1 betty  julien      23 Sep 20 14:25 hello
	17) Write a script that will play the StarWars IV episode in the terminal.
