# actions

get '/' do
  "It's on!"
end

# misc

get '/stylesheets/application.css' do
  sass :application
end