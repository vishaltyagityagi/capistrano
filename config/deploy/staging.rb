role :app, %w{vishal@localhost}
role :web, %w{vishal@localhost}
role :db,  %w{vishal@localhost}

set :stage, :production
set :rails_env, :production

set :deploy_user, "vishal"

server 'localhost', user: 'vishal', roles: %w{web app db}, primary: true

set :ssh_options, {
user: 'vishal',
forward_agent: false,
auth_methods: %w(password),
password: '12345678'
}

# set :ssh_options, {
#     keys: %w(/home/ubuntu/amazon.pem),
#     forward_agent: false,
#     auth_methods: %w(publickey)
# }

# ////////—NOTE—/////////
# A—If we are using capistrano for deploy app on server please uncomment the commented code and comment the following code and replace vishaltygai with your server user_name ,,exapmple your server user_name is "ubuntu", and replae localhost with your elastic IP address.
# —————— code will look like this example……..

#    role :app, %w{ubuntu@100.100}
#     role :web, %w{ubuntu@100.100}
#     role :db,  %w{ubuntu@100.100}

#     set :stage, :production
#     set :rails_env, :production

#     set :deploy_user, "ubuntu"

#     server '100.100', user: 'ubuntu', roles: %w{web app db}, primary: true

#     # set :ssh_options, {
#     # ubuntu: 'ubuntu',
#         # forward_agent: false,
#         # auth_methods: %w(password),
#         # password: 'password'
#      # }

#     set :ssh_options, {
#     keys: %w(/home/ubuntu/buildings.pem),
#     forward_agent: false,
#     auth_methods: %w(publickey)
#     }

