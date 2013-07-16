require "rubygems"
require "bundler"

# This actually requires the bundled gems
ENV['RACK_ENV'] ||= "development"
Bundler.require(:default, ENV['RACK_ENV'] || :development)

require './application'
