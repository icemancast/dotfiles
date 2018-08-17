# Massventure aliases
alias msv='massventure_init'
alias msv-start='massventure_init; docker-compose run --service-ports --rm web'
alias msv-bi='docker-compose run --rm web bundle install'
alias msv-be='docker-compose run --rm web bundle exec $1'
alias msv-rspec='docker-compose run --rm web bundle exec rspec'
alias msv-rake='docker-compose run --rm web bundle exec rake $1'
alias msv-rails='docker-compose run --rm web bundle exec rails $1'

# Massventure setup
function massventure_init() {
    cd ~/develop/massventure/application;
    docker-machine stop massventure;
    docker-machine start massventure;
    dv massventure;
}