In a new Chrome OS / Crostini install, installs a number of needed packages and their dependencies.  Major installs include:  
PHP 7.2  
Python 3  
Pip 3  
Composer  
Flutter  
GIMP  
Okular  
Sublime Text  
Sublime Merge  

Also creates .bash-aliases, .bash-functions, and .bash-exports with common config options.

After running the script, .bash-extensions/.startup must be sourced in the local .bashrc file.

.bash-exports may require manual changes if the HOME directory is not /home/jamekrut.
