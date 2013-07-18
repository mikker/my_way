require './application'

# Test task
require 'rake/testtask'
Rake::TestTask.new do |t|
  t.test_files = FileList['test/*_test.rb']
end
task :default => :test

require 'sinatra/asset_pipeline/task.rb'
Sinatra::AssetPipeline::Task.define! Application

