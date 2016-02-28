alias mvim='/Applications/MacVim.app/Contents/MacOS/MacVim'

# function for branch name
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}


# Command prompt
export PS1="[\u@\[\e[1;34m\]\W\[\e[m\]\[\033[32m\]->\$(parse_git_branch)\[\033[00m\]]$ "

# Variables
vps_path='/Users/icemancast/vps'

# Aliases
alias subl2='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias ll='ls -lahG'
alias mou="open -a Mou.app"
alias tml="tmux list-sessions"
alias tma="tmux -2 attach -t $1"
alias tmk="tmux kill-session -t $1"

alias create-site="ansible-playbook -i ansible/hosts ansible/site-create.yml -l vagrant"
alias cs='_create_site'
alias sc='cs'


# Change directories
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
#alias c='_cd_site'
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

# Alias Functions
function _cd_site() {
  if [ "$#" -eq 1 ]; then
    cd ~/vps/sites/$1;   
  else
    cd ~/vps/sites/$1/$2.dev/$3;   
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
  if [ "${PWD}" != $vps_path ]; then
    cd ~/vps
  fi
  create-site
}

PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
PATH="~/.composer/vendor/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Set rbenv up
export RBENV_ROOT="$HOME/.rbenv"

export EDITOR='vim'

#if [ -d $RBENV_ROOT ]; then
  #export PATH="$RBENV_ROOT/bin:$PATH"
  #eval "$(rbenv init -)"
#fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
  . $LUNCHY_DIR/lunchy-completion.bash
fi

# Path to the bash it configuration
export BASH_IT="/Users/icemancast/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh
