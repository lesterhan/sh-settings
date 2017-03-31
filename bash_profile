
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

smiley () { echo -e " :)"; }

# Change Prompt
#   ------------------------------------------------------------
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\e[30;1m________________________________________________________________________________\n\e[30;1m\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \e[0m@ \h (\u) \n~> "

export PS2="| > "

# Using iTerm to manage colours
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

# Dev alias
alias rs='rails server'
alias rc='rails console'
alias gst='git status'
alias gpr='git pull --rebase'
alias gcm='git commit -m'

alias ls='ls -GFh'
alias lsa='ls -GFhla'
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
