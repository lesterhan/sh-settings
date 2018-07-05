echo "Gimme a sec..."
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"
# set default nvm
#nvm alias default 7.7.4
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home'

smiley () { echo -e " :)"; }

# Change Prompt
#   ------------------------------------------------------------
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\e[30;1m\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \e[0m@ \h (\u) \n~> "

export PS2="| > "

# Using iTerm to manage colours
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

# Dev alias
alias r='rubocop'
alias rs='rails server'
alias rc='rails console'
alias nr='npm run'
alias gp='git pull'
alias ga='git add'
alias gpr='git pull --rebase'
alias gst='git status'
alias gcm='git commit -m'
alias gsu='git submodule update'

alias go='echo "Going to twu directory..." && cd ~/twu/twu-62/'
alias gf='echo "Going to C5 directory..." && cd ~/twu/twu-62/twu62team2'
alias gt='echo "Going to trainees directory..." && cd ~/twu/twu-62/trainees'

alias ls='ls -GFh'
alias lsa='ls -GFhla'
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias l='ll'
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder

echo "... all done :)"
