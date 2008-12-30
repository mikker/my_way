require "rubygems"
require "spec/rake/spectask"

require "config"

file_list = Dir["spec/*_spec.rb"]
Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = file_list
end

desc 'Default: run specs'
task :default => 'spec'

namespace :db do
  desc "AutoMigrate the db (deletes data)"
  task :migrate do
    DataMapper.auto_migrate!
  end
  desc "AutoUpgrade the db (preserves data)"
  task :upgrade do
    DataMapper.auto_upgrade!
  end
end

namespace :sinatra do
  desc "Updates or downloads the latest Sinatra build"
  task :edge do
    if !File.exists?(File.join(File.dirname(__FILE__), "vendor", "sinatra"))
      system "git clone git://github.com/bmizerany/sinatra.git vendor/sinatra"
    else
      system "cd vendor/sinatra;git pull"
    end
  end
end