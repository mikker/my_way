require "dm-core"
DataMapper.setup(:default, "sqlite3:///#{Dir.pwd}/development.sqlite3")