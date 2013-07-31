server "198.199.112.53", :app, :web, :db, :primary => true
set :deploy_to, "/var/www/luckycritic_staging"
set :branch, 'staging'

role :web, "198.199.112.53"
role :app, "198.199.112.53"
role :db, "198.199.112.53", :primary => true
role :db, "198.199.112.53"