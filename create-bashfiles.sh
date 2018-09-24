cat > .bash-aliases <<- EOM
## convenience and shortcut aliases
alias python=python3
alias pip=pip3
alias gimp="sommelier -X --scale=0.8 --dpi=160 gimp"
alias adb="~/Android/Sdk/platform-tools/adb"
alias connect-adb="adb connect 100.115.92.2:5555"
alias disconnect-adb="adb disconnect 100.115.92.2:5555"
alias localserver="python -m http.server"

## ssh aliases

## directory shortcuts

## silliness

EOM

cat > .bash-functions <<- EOM
function mkdircd {
  mkdir \$1
  cd \$1
}

function quicksom {
  sommelier -X --scale=\$1 --dpi=160 \$2
}

EOM

cat > .bash-exports <<- EOM
export PATH=~/devtools/flutter/bin:\$PATH
export PATH=\$PATH:~/Android/Sdk/tools:~/Android/Sdk/platform-tools

EOM

cat > .startup <<- EOM
source ~/.bash-extensions/.bash-aliases
source ~/.bash-extensions/.bash-functions
source ~/.bash-extensions/.bash-exports

EOM

