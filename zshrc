# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

  export ZSH=~/.oh-my-zsh

  ZSH_THEME="candy"

 ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git python
)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

screenfetch -c 3 

alias nano="sudo nano"
alias update="yaourt -Syyu"
alias aurin="yaourt -S"
alias aurs="yaourt -Ss"
alias remove="sudo pacman -Rdd"
alias status="sudo systemctl status"
alias enable="sudo systemctl enable"
alias disable="sudo systemctl disable"
alias restart="sudo systemctl restart"
alias failed="sudo systemctl --failed"
alias stopd="sudo systemctl stop"
alias reboot="sudo reboot" 
alias poweroff="sudo poweroff"
alias banner="screenfetch -c 3"
