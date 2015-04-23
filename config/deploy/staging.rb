#server "54.148.104.94", :app, :web, :primary => true
#server "198.61.137.200", :app, :web, :db, :primary => true

# Define roles, user and IP address of deployment server
# role :name, %{[user]@[IP adde.]}
#role :app, %w{ubuntu@Server IP Address}
role :app, %w{ubuntu@192.45.54.98}
# Define server(s)
# Example:
# server '[your droplet's IP addr]', user: '[the deployer user]', roles: %w{[role names as defined above]}
# server '162.243.74.190', user: 'deployer', roles: %w{app}
set :branch, 'staging'
set :php_env, 'staging'
set :deploy_to, '/var/www/stagecapt'

server '192.45.54.98', user: 'ubuntu', roles: %w{app}


# SSH Options
# See the example commented out section in the file
# for more options.
set :ssh_options, {
    forward_agent: true,
    auth_methods: ["publickey"],
    keys: ["/home/gopal/.ssh/server.pem"]
}

# Do not add www, just add domain.com
set :domain, "mycapstry.com"
set :domain_alias, "www.mycapstry.com"