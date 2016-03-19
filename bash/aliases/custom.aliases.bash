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
alias bexar='_cd_site bexarcreative $1'
alias bear='bexar'
alias vps="cd ~/vps; ll;"
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
