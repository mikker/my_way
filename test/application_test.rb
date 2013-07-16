require './test/test_helper'

class AppTest < Test::Unit::TestCase

  def test_app_responds_correctly
    get '/'
    assert_match /Sinatra/, last_response.body
  end

end
