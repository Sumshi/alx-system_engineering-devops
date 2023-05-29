                                        shell variables expansion
		man or help:
	printenv
	set
	unset
	export
	alias
	unalias
	.
	source
	printf

		General
	What happens when you type $ ls -l *.txt

		Shell Initialization Files
	What are the /etc/profile file and the /etc/profile.d directory
	What is the ~/.bashrc file

		Variables
	What is the difference between a local and a global variable
	What is a reserved variable
	How to create, update and delete shell variables
	What are the roles of the following reserved variables: HOME, PATH, PS1
	What are special parameters
	What is the special parameter $??

		Expansions
	What is expansion and how to use them
	What is the difference between single and double quotes and how to use them properly
	How to do command substitution with $() and backticks

		Shell Arithmetic
	How to perform arithmetic operations with the shell

		The alias Command
	How to create an alias
	How to list aliases
	How to temporarily disable an alias
	How to execute commands from a file in the current shell

	Read your /etc/profile, /etc/inputrc and ~/.bashrc files.
	Look at some files in the /etc/profile.d directory

		TASKS
	0) Create a script that creates an alias. Name: ls. Value: rm *
	1) Create a script that prints hello user, where user is the current Linux user.
	2) Add /action to the PATH. /action should be the last directory the shell looks into when looking for a program.
	3) Create a script that counts the number of directories in the PATH.
	4) Create a script that lists environment variables.
	5) Create a script that lists all local variables and environment variables, and functions.
	6) Create a script that creates a new local variable. Name: BEST. Value: School
	7) Create a script that creates a new global variable. Name: BEST. Value: School
	8) Write a script that prints the result of the addition of 128 with the value stored in the environment variable TRUEKNOWLEDGE, followed by a new line.export TRUEKNOWLEDGE=1209
	9) Write a script that prints the result of POWER divided by DIVIDE, followed by a new line. POWER and DIVIDE are environment variables. export POWER=42784. export DIVIDE=32
	10) Write a script that displays the result of BREATH to the power LOVE. 
		REATH and LOVE are environment variables
			export BREATH=4,  export LOVE=3
	11) Write a script that converts a number from base 2 to base 10.
	The number in base 2 is stored in the environment variable BINARY
	The script should display the number in base 10, followed by a new line
	12) Create a script that prints all possible combinations of two letters, except oo.
	Letters are lower cases, from a to z
	One combination per line
	The output should be alpha ordered, starting with aa
	Do not print oo
	Your script file should contain maximum 64 characters
	13) Write a script that prints a number with two decimal places, followed by a new line.
	The number will be stored in the environment variable NUM.
	14) Write a script that converts a number from base 10 to base 16.
		The number in base 10 is stored in the environment variable DECIMAL
		the script should display the number in base 16, followed by a new line
	15) Write a script that encodes and decodes text using the rot13 encryption. Assume ASCII.
	16) Write a script that prints every other line from the input, starting with the first line.
	17) Write a shell script that adds the two numbers stored in the environment variables WATER and STIR and prints the result.
		WATER is in base water
		STIR is in base stir.
		The result should be in base bestchol
