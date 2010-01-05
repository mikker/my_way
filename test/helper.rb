ENV['RACK_ENV'] = 'test'
require 'application'

require 'test/unit'
require 'rack/test'

begin
  require 'redgreen'
rescue LoadError
end

class Test::Unit::TestCase
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end
end

# Session helper
def session
  last_request.env['rack.session']
end
