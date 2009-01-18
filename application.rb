require "rubygems"

# Load from vendor dir if it exists
# Use "rake sinatra:edge" to pull down the newest Sinatra from GitHub
$LOAD_PATH.unshift(File.dirname(__FILE__) + '/vendor/sinatra/lib')
require "sinatra" unless defined?(Sinatra)

configure do
  # Loads default DataMapper SQLite3 setup
  require "config"
  
  # Models
  # Dir["app/models/*.rb"].each { |c| require c }

  # Sets the view path
  set_option :views, File.join(File.dirname(__FILE__), 'app', 'views')
end

# Multiple controller files
# Dir["app/controllers/*.rb"].each { |c| load c }

# Single controllers file
load File.join(File.dirname(__FILE__), "app", "controller.rb")