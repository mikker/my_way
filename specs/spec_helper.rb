require "rubygems"
require "dm-core"

# !!! Include libs here

DataMapper.setup(:default, "sqlite3::memory:")
DataMapper.auto_migrate!
