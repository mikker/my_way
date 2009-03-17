require File.join(File.dirname(__FILE__), "spec_helper")

describe 'My Way' do
  include Sinatra::Test

  it "says something about Sinatra" do
    get '/'
    response.should be_ok
    response.body.should =~ /Sinatra did it his way, you know\.\.\./
  end
end