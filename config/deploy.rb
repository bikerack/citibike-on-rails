set :application, "citibike_on_rails"
set :repository,  "git@github.com:bikerack/citibike-on-rails.git"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, 'deploy'
set :deploy_to, "/home/#{ user }/#{ application }"
set :use_sudo, false

role :web, "66.228.33.47"                          # Your HTTP server, Apache/etc
role :app, "66.228.33.47"                          # This may be the same as your `Web` server
role :db,  "66.228.33.47", :primary => true # This is where Rails migrations will run

set :ssh_options, { :forward_agent => true }
set :branch, 'deploy-to-linode2'

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end