require "sinatra"

# Load libs from vendor dir
# This makes it possible to vendor your gems
# eg. for use on Heroku hosting (or anything else)
# [ For Heroku; see http://gist.github.com/68277 ]
Dir['vendor/*'].each do |lib|
  $:.unshift(File.join(File.dirname(__FILE__), lib, 'lib'))
end

configure do
  # Loads default DataMapper SQLite3 setup
  require "config"
  
  # Models
  # Dir["models/*.rb"].each { |c| require c }
end

# Multiple controller files
# Dir["app/controllers/*.rb"].each { |c| load c }

# Single controllers file
# load File.join(File.dirname(__FILE__), "app", "controller.rb")

# Inline controller
get '/' do
  haml :index, :layout => !request.xhr? # don't load layout if, the request is js
end

get '/stylesheet.css' do
  content_type 'text/css'
  sass :application
end