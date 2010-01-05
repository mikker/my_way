namespace :compass do
  desc "Run Webby"
  task :run do
    system 'compass -w --sass-dir=app/stylesheets --css-dir=public/stylesheets'
  end
end
namespace :shotgun do
  desc "Run Shotgun"
  task :run do
    system 'shotgun -s thin'
  end
end

desc "Run everything needed to develop"
multitask :develop => [ 'compass:run', 'shotgun:run' ]

# Test task
require 'rake/testtask'
Rake::TestTask.new do |t|
  t.test_files = FileList['test/test_*.rb']
end
task :default => :test
