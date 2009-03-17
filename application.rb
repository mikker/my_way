require "sinatra"

# Load libs from vendor dir
# This makes it possible to vendor your gems
# eg. for use on Heroku hosting (or anything else)
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
  "Sinatra did it his way..."
end

get '/stylesheet.css' do
  content_type 'text/css'
  sass :application
end