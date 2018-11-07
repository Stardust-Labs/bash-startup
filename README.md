# Bash Startup

Downloads essential programs and sets up directories in a new install or recently wiped bash environment.

## Pre-install Requirements

[Node.js](https://nodejs.org) needs to be installed manually prior to running the environment's install.sh file.  NPM is used for some packages.  (This is not required for ubuntu).

For Ubuntu installs, [Composer](https://getcomposer.org) will need to be manually installed prior to running the script, as the verification hash changes with release and must be entered manually.

## Installed Packages / Tools

### Universal

The following are installed in all supported environments:

- PHP 7.2  
- Python 3  
- Pip 3  
- Composer  
- Vim-Plug  

### Crostini

Crostini's install also includes:

- Flutter
- NASM
- GIMP
- Okular
- Thunderbird
- Sublime Text
- Sublime Merge

### Ubuntu

*Currently not implemented for Ubuntu Desktop or Ubuntu Server*

### Ubuntu \(Subsystem for Windows\)

*Ubuntu Subsystem does not have any packages not included in the universal install*

## Generated files
Creates `.bash-aliases`, `.bash-functions`, and `.bash-exports` with universal configs in `~/.bash-extensions`.

After running the script, ~/.bash-extensions/.startup must be sourced in the local .bashrc file.

## Post-install process

Aliases and exports contain references to the [Android SDK](https://developer.android.com/studio) in the source directory.  As the SDK receives frequent updates, its installation is not included in this script and must be performed manually after running crostini-start.sh.

A .vimrc file with vim-plug plugins will be created, but the `:PlugInstall` will need to be manually run from within vim in order to actually install plugins.
