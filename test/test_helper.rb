require 'test/unit'

ENV['RACK_ENV'] = 'test'
require './application'

class Test::Unit::TestCase
  include Rack::Test::Methods
  def app
    Application
  end
end
