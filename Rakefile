desc "Compass watcher"
task :compass do
  system 'sass --watch app/stylesheets/application.sass:public/stylesheets/application.css'
end

desc "Run Shotgun"
task :shotgun do
  system 'shotgun config.ru'
end

desc "Run everything needed to develop"
multitask :develop => [ 'compass', 'shotgun' ]

# Test task
require 'rake/testtask'
Rake::TestTask.new do |t|
  t.test_files = FileList['test/*_test.rb']
end
task :default => :test
