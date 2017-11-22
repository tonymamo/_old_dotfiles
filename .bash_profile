source ~/.bashrc
export PATH=/usr/local/bin:$PATH

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# API servers
alias ssh-api-test="ssh -i '/Users/tonymamo/.ssh/FlashRecruitAPITest.pem' ec2-user@ec2-54-87-199-196.compute-1.amazonaws.com"
alias ssh-api-stage="ssh -i '/Users/tonymamo/.ssh/FlashRecruitAPIStage.pem' ec2-user@ec2-52-55-10-60.compute-1.amazonaws.com"
alias ssh-api="ssh -i '/Users/tonymamo/.ssh/FlashRecruitAPI.pem' ec2-user@ec2-52-205-79-86.compute-1.amazonaws.com"

# Web servers
alias ssh-test="ssh -i '/Users/tonymamo/.ssh/FlashRecruitTest.pem' ec2-user@ec2-52-204-216-216.compute-1.amazonaws.com"
alias ssh-stage="ssh -i '/Users/tonymamo/.ssh/FlashRecruitStage.pem' ec2-user@ec2-54-234-152-156.compute-1.amazonaws.com"
alias ssh-prod1="ssh -i '/Users/tonymamo/.ssh/FlashRecruitProd.pem' ec2-user@ec2-52-45-241-126.compute-1.amazonaws.com"


# ~/.bash_profile

[[ -s ~/.bashrc ]] && source ~/.bashrc

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ls='ls -GFh'
alias ll='ls -l'

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="\n$RED\u $PURPLE@ $GREEN\w $RESETCOLOR$GREENBOLD\$(git branch 2> /dev/null)\n $BLUE[\#] → $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"
}
