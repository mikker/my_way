module MyWay
  class Application < Sinatra::Base
    set :root, File.dirname(__FILE__)
    enable :methodoverride, :static
    set :views, 'app/views'
    set :public, 'public'
    
    get '/' do
      haml :index
    end
  end
  
  def self.app
    @@app ||= Application
  end  
end