require 'sinatra'

# Helpers
require './lib/render_partial'

# Configure Sinatra
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public_folder, 'public'

get '/' do
  slim :index, layout: :'layouts/application'
end
