require "rubygems"

# Load from vendor dir if it exists
# Use "rake sinatra:edge" to pull down the newest Sinatra from GitHub
$LOAD_PATH.unshift(File.dirname(__FILE__) + '/vendor/sinatra/lib')
require "sinatra"

# Rack/Passenger only does production?
Sinatra::Application.default_options.merge!(
  :run => false,
  :env => :production,
  :raise_errors => true
)

# Logging
log = File.new("log/sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

require "application"

run Sinatra.application