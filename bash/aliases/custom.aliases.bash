alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias ll='ls -lahG'

alias create-site="ansible-playbook -i ansible/hosts ansible/site-create.yml -l vagrant"
alias cs='_create_site'
alias sc='cs'
alias mvi='mvim -v'

# Change directories
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."

alias clients='_cd_site clients'
alias personal='_cd_site personal $1'
alias echods='_cd_site echods $1'
alias codeup="cd ~/Documents/codeup; ll"
alias vps="cd ~/vm; ll;"
alias vm="cd ~/vm; ll; pwd"
alias vl="cd ~/vagrant-lamp; ll; pwd"
alias wpt='_cd_wp'

# Vagrant commands
alias vs='vagrant status'
alias vssh='vagrant ssh'
alias vu='vagrant up'
alias vh='vagrant halt'

# Git alias
alias gl="git log --full-diff"
alias gs="git status"
alias gco="git co $1"
alias gc="git commit -m $1"
alias gm="git merge $1"

# SSH alias
alias ssh-compile="echo -n > ~/.ssh/config && cat ~/.ssh/config.d/* > ~/.ssh/config"

# Client specific
alias evm="cd ~/vm/sites/clients/evermarket/App/EverMarketMobile; ll; pwd"
alias evm-start="evm; react-native start"
alias evm-open="evm; open ~/vm/sites/clients/evermarket/App/EverMarketMobile/ios/EverMarketMobile.xcodeproj; mvi ."
alias evm-web="cd ~/vm/sites/clients/evermarket/EvermarketWeb/Source; sudo http-server -p 443 -S -C ~/vm/sites/clients/evermarket/source_files/cert.pem  -K ~/vm/sites/clients/evermarket/source_files/key.pem"
alias emv="evm" # Always mispelled

# Variables
vm_path='/Users/icemancast/vm'
# SSH alias

# Alias Functions
function _cd_site() {
  if [ "$#" -eq 1 ]; then
    cd ~/vm/sites/$1;
  else
    cd ~/vm/sites/$1/$2.dev/$3;
  fi
  pwd && ll;
}

function _cd_wp() {
  if [ "$#" -eq 0 ]; then
    cd wp-content/themes/;
  else
    cd wp-content/themes/$1;
  fi
  pwd && ll;
}

function _create_site() {
  if [ "${PWD}" != $vm_path ]; then
    cd ~/vm
  fi
  create-site
}
