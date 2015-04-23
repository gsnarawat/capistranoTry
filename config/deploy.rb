set :stages, %w(staging production)
set :default_stage, 'staging'

#

# load 'config/recipes/base'
# load 'config/recipes/check'
# load 'config/recipes/httpd'
# load 'config/recipes/expression-engine'

set :client, 'capistranoTry'
set :application, 'capistranoTry'
set :user, 'ubuntu'
set :deploy_via, :remote_cache
set :use_sudo, false

set :deploy_to, "/var/www/stage"
#set :dbname, "ruchs"

set :scm, 'git'
set :repo_url, "https://username:password@github.com/gsnarawat/capistranoTry.git"
set :branch, 'staging'
set :scm_verbose, true

set :copy_exclude, %w(.git .gitignore README.md)

set :pty, true

 namespace :deploy do
   desc 'Restart application'
   task :restart do
     on roles(:app), in: :sequence, wait: 5 do
       # Your restart mechanism here, for example:
       # sudo "service nginx restart"
     end
   end
 end
