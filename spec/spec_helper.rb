require "rubygems"
require "spec"

require "config"

DataMapper.setup(:default, "sqlite3::memory:")
DataMapper.auto_migrate!
