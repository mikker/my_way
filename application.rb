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
  # Dir["app/models/*.rb"].each { |c| require c }

  # Sets the view path
  set :views, File.join(File.dirname(__FILE__), 'app', 'views')
end

# Multiple controller files
# Dir["app/controllers/*.rb"].each { |c| load c }

# Single controllers file
load File.join(File.dirname(__FILE__), "app", "controller.rb")