desc "Compass watcher"
task :compass do
  system 'compass -w --sass-dir=app/stylesheets --css-dir=public/stylesheets --images-dir=public/images'
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
  t.test_files = FileList['test/test_*.rb']
end
task :default => :test
