require "rubygems"
require "bundler"

# This actually requires the bundled gems
ENV['RACK_ENV'] ||= "development"
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

require './app/myway'
