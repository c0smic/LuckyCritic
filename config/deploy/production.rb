server "198.199.112.53", :app, :web, :db, :primary => true
set :deploy_to, "/var/www/luckycritic"
set :branch, 'master'

role :web, "198.199.112.53"
role :app, "198.199.112.53"
role :db, "198.199.112.53"
role :db, "198.199.112.53"