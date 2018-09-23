cat > .bash-aliases <<- EOM
## convenience and shortcut aliases
alias python=python3
alias pip=pip3
alias gimp="sommelier -X --scale=0.8 --dpi=160 gimp"

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

EOM

cat > .startup <<- EOM
source ~/.bash-extensions/.bash-aliases
source ~/.bash-extensions/.bash-functions
source ~/.bash-extensions/.bash-exports

EOM

