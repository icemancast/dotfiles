alias ll='ls -lahG'

# Change directories
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'

# Git alias
alias gl='git log --full-diff'
alias gs='git status'
alias gco='git co $1'
alias gc='git commit -m $1'
alias gm='git merge $1'
alias gpo='git push origin $1'

# Count lines of code
alias count='git ls-files | xargs wc -l'

# Laravel development
alias artisan='php artisan $1'
alias phpunit='./vendor/bin/phpunit $1'
alias pf='phpunit --filter'

alias letsgo='nvm use && valet use'