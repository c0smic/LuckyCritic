server "luckycritic.jackketcham.com", :app, :web, :db, :primary => true
set :deploy_to, "/var/www/luckycritic_staging"
set :branch, 'staging'
