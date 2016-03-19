alias mvim='/Applications/MacVim.app/Contents/MacOS/MacVim'

# function for branch name
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Command prompt
export PS1="[\u@\[\e[1;34m\]\W\[\e[m\]\[\033[32m\]->\$(parse_git_branch)\[\033[00m\]]$ "

# Variables
vps_path='/Users/icemancast/vps'

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
