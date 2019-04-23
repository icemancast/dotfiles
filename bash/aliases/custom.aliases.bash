alias ll='ls -lahG'

# Macvim inside terminal
#alias mvi='mvim -v'
alias v.='mvim $(pwd)'

# Change directories
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'

# Misc aliases
alias projects='_cd_project $1'
alias dev='_cd_develop $1'
alias homestead='cd ~/Homestead; ll; pwd'
alias wpt='_cd_wp'
alias dotfiles='cd ~/dotfiles; mvi .';

# Vagrant commands
alias vs='vagrant status'
alias vssh='vagrant ssh'
alias vu='vagrant up'
alias vh='vagrant halt'

# Git alias
alias gl='git log --full-diff'
alias gs='git status'
alias gco='git co $1'
alias gc='git commit -m $1'
alias gm='git merge $1'
alias gpo='git push origin $1'

# Count lines of code
alias count='git ls-files | xargs wc -l'

# SSH alias
alias ssh-compile='echo -n > ~/.ssh/config && cat ~/.ssh/config.d/* > ~/.ssh/config'

# Docker commands
alias dv='_docker_env $1'
alias dssh='_docker_ssh $1'

# Client aliases
source $HOME/dotfiles/bash/aliases/clients/mod.bash
source $HOME/dotfiles/bash/aliases/clients/massventure.bash
source $HOME/dotfiles/bash/aliases/clients/door.bash
source $HOME/dotfiles/bash/aliases/clients/ritetrade.bash
source $HOME/dotfiles/bash/aliases/echo/echods.bash

# React Native
alias ios-simulator="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/"

# Laravel development
alias artisan='php artisan $1'
alias phpunit='./vendor/bin/phpunit $1'

# Clean react native app
alias clean-rn='watchman watch-del-all && rm -rf node_modules && rm -rf $TMPDIR/react-* && rm -rf $TMPDIR/npm-* && rm -rf android/build && rm -rf ios/build && yarn cache clean'

# Open android
alias android='/Users/icemancast/Library/Android/sdk/emulator/emulator @Nexus_6_API_28'

# Alias Functions ============================
# Enter client site if param exists
function _cd_project() {
  if [ "$#" -eq 1 ]; then
    cd ~/projects/$1;
  else
    cd ~/projects/$1/$2;
  fi
  pwd && ll;
}

# Alias Functions ============================
# Enter client site if param exists
function _cd_develop() {
    if [ "$#" -eq 1 ]; then
        cd ~/develop/$1;
        pwd && ll;
    fi
}

# Enter theme directory once inside
function _cd_wp() {
  if [ "$#" -eq 0 ]; then
    cd wp-content/themes/;
  else
    cd wp-content/themes/$1;
  fi
  pwd && ll;
}

# Start docker machine
function _docker_env() {
  if [ "$#" -eq 1 ]; then
    eval $(docker-machine env $1)
  fi
}

# SSH to docker
function _docker_ssh() {
  if [ "$#" -eq 1 ]; then
    docker exec -it $1 bash
  fi
}

# Homestead commands
function homestead() {
  ( cd ~/Homestead && vagrant $* )
}
