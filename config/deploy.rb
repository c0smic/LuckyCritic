require 'capistrano/ext/multistage'
#require 'capistrano-puma'

set :application, "playershelf"
set :repository,  "git@github.com:c0smic/LuckyCritic.git"

set :stages, ["staging", "production"]
set :default_stage, "production"

set :scm, "git"
set :user, "deployer"
set :scm_passphrase, "alpine"
set :use_sudo, true

default_run_options[:pty] = true
set :deploy_via, :remote_cache