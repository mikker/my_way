require 'test/helper'

class AppTest < Test::Unit::TestCase
  
  def test_app_responds_correctly
    get '/'
    assert_match /Sinatra did it his way, you know.../, last_response.body
  end
  
end