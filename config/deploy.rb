#http://grigio.org/deploy_rails_3_passenger_apache_dreamhost
set :application, "mariage_quetigny"
set :repository,  "git@github.com:dbachet/mariage_quetigny.git"
set :domain, "changeons.org"
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :shared_path, "/home/#{user}/.gems"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, 'dagidaf'
set :deploy_to, "/home/#{user}/#{domain}/#{application}"
set :deploy_via, :export
set :rails_env, "production"

default_run_options[:pty] = true
set :use_sudo, false
#before "deploy", "deploy:check_revision"
set :ssh_options, {:forward_agent => true}

after "deploy:update_code", "deploy:write_revision"
before "deploy:gems", "deploy:symlink"

role :web, "changeons.org"                          # Your HTTP server, Apache/etc
role :app, "changeons.org"                          # This may be the same as your `Web` server
role :db,  "changeons.org", :primary => true # This is where Rails migrations will run

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

#after "deploy", "deploy:bundle_gems"
#after "deploy:bundle_gems", "deploy:restart"

# namespace :deploy do
##   task :bundle_gems do 
##     run "cd #{deploy_to}/current && bundle install vendor/gems
##   end
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
 
namespace :deploy do

  desc "expand the gems"
  task :gems, :roles => :web, :except => { :no_release => true } do
    run "cd #{current_path}; #{shared_path}/bin/bundle unlock"
    run "cd #{current_path}; nice -19 #{shared_path}/bin/bundle install vendor/" # nice -19 is very important otherwise DH will kill the process!
    run "cd #{current_path}; #{shared_path}/bin/bundle lock"
  end

end