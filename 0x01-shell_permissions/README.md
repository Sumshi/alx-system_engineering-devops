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
 	How to represent each of the three sets of permissions (owner, group, and ot		her) as a single digit
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
