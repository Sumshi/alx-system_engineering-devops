``` 0x17-web_stack_debugging_3```
<h2>debugging internal server error retured from curl -sI 127.0.0.1</h2>
<h3>Steps</h3>
<ol>
<li>install tmux so that u can split the terminals
sudo apt install tmux</li>
<li>start tmux: type tmux on the terminal</li>
<li>split the terminal into two: ctrl+b then %</li>
<li>to go to the other terminal: ctrl+b then arrow key</li>
<li>type:ps aux to observe the process id for www-data apache2</li>
<li>after getting the process id, trace it using strace -p process id</li>
<li>Then on the other terminal, curl -sI 127.0.0.1</li>
<li>observe the output returned by strace, 0 indicates success
-1 indicates error</li>
<li> we see that all the -1 returns files with .phpp instead of .php with 
the error no such file or directory</li>
<li> check the files in /var/www/html
it contains all the wordpress files</li>
<li>vi into the file wp-settings.php</li>
<li>going line by line check the files that has issues with php
eg files with .phpp for instance</li>
<li>easier to search in vim is go to escape mode then type this :/.phpp</li>
<li>locate the line and remove the extra p</li> 
<li>restart apache2, sudo service apache2 restart</li>
<li>finally write the puppet file</li>
<ol>