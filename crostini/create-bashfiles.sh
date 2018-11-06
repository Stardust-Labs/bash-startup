cat > ~/.bash-extensions/.bash-aliases <<- EOM
## convenience and shortcut aliases
alias python=python3
alias pip=pip3
alias gimp="sommelier -X --scale=0.8 --dpi=160 gimp"
alias adb="~/Android/Sdk/platform-tools/adb"
alias connect-adb="adb connect 100.115.92.2:5555"
alias disconnect-adb="adb disconnect 100.115.92.2:5555"
alias localserver="python -m http.server"
alias phplint="find . -type f -name '*.php' -exec php -l {} \; | (! grep -v \"No syntax errors detected\" )"
## ssh aliases

## directory shortcuts

## silliness

EOM

cat > ~/.bash-extensions/.bash-functions <<- EOM
function mkdircd {
  mkdir \$1
  cd \$1
}

function quicksom {
  sommelier -X --scale=\$1 --dpi=160 \$2
}

function compileAsm {
  FNAME="\$1"
  arrFNAME=(\${FNAME//./ })
  LNAME="\$arrFNAME"
  ONAME="\$LNAME.o"
  nasm -f elf64 -o \$ONAME \$FNAME
  ld \$ONAME -o \$LNAME
  rm \$ONAME
}

function run-phpunit {
  declare opt
  declare OPTARG
  declare OPTIND
  declare _testname
  declare _outfile

  while getopts t:o: opt; do
    case \$opt in
	  t)
	    _testname=\$OPTARG >&2
		;;
	  o)
	    _outfile=\$OPTARG >&2
		;;
	  \\?)
	    echo "Invalid option: -\$OPTARG" >&2
		exit 1
		;;
	  :)
	    echo "Option -\$OPTARG requires an argument." >&2
		exit 1
		;;
	esac
  done
  if [[ -n "\$_testname" && -n "\$_outfile" ]]
  then
    ./vendor/bin/phpunit --bootstrap vendor/autoload.php --testdox tests/"\$_testname" > "\$_outfile"
  elif [[ -n "\$_testname" ]]
  then
    ./vendor/bin/phpunit --bootstrap vendor/autoload.php --testdox tests/"\$_testname"
  elif [[ -n "\$_outfile" ]]
  then
    ./vendor/bin/phpunit --bootstrap vendor/autoload.php --testdox tests > "\$_outfile"
  else
    ./vendor/bin/phpunit --bootstrap vendor/autoload.php --testdox tests
  fi
}


EOM

cat > ~/.bash-extensions/.bash-exports <<- EOM
export PATH=~/devtools/flutter/bin:\$PATH
export PATH=\$PATH:~/Android/Sdk/tools:~/Android/Sdk/platform-tools

EOM

cat > ~/.bash-extensions/.startup <<- EOM
source ~/.bash-extensions/.bash-aliases
source ~/.bash-extensions/.bash-functions
source ~/.bash-extensions/.bash-exports

EOM

