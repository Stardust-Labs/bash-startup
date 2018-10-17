## create vim settings file
cd ~

cat > .vimrc <<- EOM

call plug#begin('~/.vim/plugged')

Plug 'dart-lang/dart-vim-plugin'

call plug#end

:set tabstop=4
:syntax on

EOM

