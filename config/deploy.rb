require 'capistrano/ext/multistage'
require 'capistrano-puma'

set :application, "playershelf"
set :repository,  "git@github.com:c0smic/LuckyCritic.git"

set :stages, ["staging", "production"]
set :default_stage, "production"

set :scm, "git"
set :user, "deployer"

default_run_options[:pty] = true
set :deploy_via, :remote_cache

server "198.199.112.53", :web, :app, :db, { primary => true }

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
