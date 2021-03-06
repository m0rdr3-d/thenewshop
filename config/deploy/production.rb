set :stage, :production
set :rails_env, :production
set :deploy_to, "/usr/local/thecornershop"
set :repo_url, "https://github.com/m0rdr3-d/thenewshop.git"
set :branch, ENV["PRODUCTION_BRANCH"]
server ENV["PRODUCTION_SERVER_IP"], user: ENV["PRODUCTION_DEPLOY_USER"], roles: %w{web app db}
