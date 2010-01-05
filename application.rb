# This makes sure the bundled gems are in our $LOAD_PATH
require File.expand_path(File.join(File.dirname(__FILE__), 'vendor', 'gems', 'environment'))
# This actually requires the bundled gems
Bundler.require_env

configure do
  set :root, File.dirname(__FILE__)
  set :views, 'app/views'

  # Set up your db connection or whatever here ...
end

get '/' do
  haml :index, :layout => !request.xhr? # don't load layout if, the request is js
end
