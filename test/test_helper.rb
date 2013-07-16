ENV['RACK_ENV'] = 'test'
require './init'
require 'test/unit'
Bundler.require(:test)

class Test::Unit::TestCase
  include Rack::Test::Methods
  def app
    Application
  end
end

def session
  last_request.env['rack.session']
end
