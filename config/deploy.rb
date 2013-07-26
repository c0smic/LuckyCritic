require 'capistrano/ext/multistage'
require 'puma/capistrano'

set :application, "luckycritic"
set :repository,  "git@github.com:c0smic/luckycritic.git"

set :stages, ["staging", "production"]
set :default_stage, "production"

set :scm, "git"
set :user, "deployer"

default_run_options[:pty] = true
set :deploy_via, :remote_cache
set :ssh_options, { :forward_agent => true }

role :web, "luckycritic.jackketcham.com"
role :app, "luckycritic.jackketcham.com"
role :db,  "luckycritic.jackketcham.com", :primary => true # This is where Rails migrations will run
role :db,  "luckycritic.jackketcham.com"

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
