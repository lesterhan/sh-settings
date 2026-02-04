random_emoji() {
  local emojis=("🚀" "👉" "⚡" "🌟" "💎" "🤌" "🤙" "👍" "🐧" "🍁" "🥝" "🍍" "🥯" "🥐" "🥮" "🧋" "🛸" "🍺" "☕" "🤖" "🈶")
  echo "${emojis[$RANDOM % ${#emojis[@]}]}"
}

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(random_emoji) "

# Dev alias
alias gp='git pull'
alias ga='git add'
alias gpr='git pull --rebase'
alias gst='git status'
alias gcm='git commit -m'
alias gsu='git submodule update'

alias ls='ls -GFh --color=auto'
alias lsa='ls -GFhla --color=auto'
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias l='ll'
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
