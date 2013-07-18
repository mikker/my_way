begin
  require "bundler"
rescue LoadError
  require "rubygems"
  require "bundler"
end

Bundler.require(:default, ENV['RACK_ENV'] || :development)

class Application < Sinatra::Base
  register Sinatra::AssetPipeline
  set :assets_precompile, %w{application.css application.js *.png *.jpg *.gif}
  
  helpers do
  end

  get '/' do
    erb :index
  end
end
