# This makes sure the bundled gems are in our $LOAD_PATH
require File.expand_path(File.join(File.dirname(__FILE__), 'vendor', 'gems', 'environment'))
# This actually requires the bundled gems
Bundler.require_env

configure do
  set :root, File.dirname(__FILE__)
  set :views, 'app/views'

  # Require DM here to only load it at boot up
  # require "dm-core" # remember to bundle what you need
  # DataMapper.setup(:default, "sqlite3:///#{Dir.pwd}/data.sqlite3")  
  # To always make your tables up to the beat, you could do something like;
  # DataMapper.auto_upgrade! # Then a reload is enough
  
  # Models
  # Dir["models/*.rb"].each { |c| require c }
end

# Inline controller
get '/' do
  haml :index, :layout => !request.xhr? # don't load layout if, the request is js
end
