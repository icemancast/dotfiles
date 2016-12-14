alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias ll='ls -lahG'

# Macvim inside terminal
alias mvi='mvim -v'

# Change directories
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'

# Misc aliases
alias projects='_cd_project $1'
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

# SSH alias
alias ssh-compile='echo -n > ~/.ssh/config && cat ~/.ssh/config.d/* > ~/.ssh/config'

# Docker commands
alias dv='_docker_env $1'
alias dssh='_docker_ssh $1'

# Client specific
alias evm='cd ~/vm/sites/clients/evermarket/App/EverMarketMobile; ll; pwd'
alias evm-start='evm; react-native start'
alias evm-open='evm; open ~/vm/sites/clients/evermarket/App/EverMarketMobile/ios/EverMarketMobile.xcodeproj; mvi .'
alias evm-web='cd ~/vm/sites/clients/evermarket/EvermarketWeb/Source; sudo http-server -p 443 -S -C ~/vm/sites/clients/evermarket/source_files/cert.pem  -K ~/vm/sites/clients/evermarket/source_files/key.pem'
alias emv='evm' # Always mispelled

alias behat='vendor/bin/behat'

alias msv-start='docker-compose run --service-ports --rm web'
alias msv-run='docker-compose run --rm web bundle exec'

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
