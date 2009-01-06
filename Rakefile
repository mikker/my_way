require "rubygems"
require "spec/rake/spectask"

require "config"

file_list = Dir["spec/*_spec.rb"]
Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = file_list
end

desc 'Default: run specs'
task :default => 'spec'

task :environment do
  $LOAD_PATH.unshift(File.dirname(__FILE__) + '/vendor/sinatra/lib')
  require "sinatra"
  Sinatra::Application.default_options.merge!(:run => false)
  require "application"
end

namespace :db do
  desc "AutoMigrate the db (deletes data)"
  task :migrate => :environment do
    DataMapper.auto_migrate!
  end
  desc "AutoUpgrade the db (preserves data)"
  task :upgrade => :environment do
    DataMapper.auto_upgrade!
  end
end

namespace :sinatra do
  desc "Updates or downloads the latest Sinatra build"
  task :edge do
    if !File.exists?(File.join(File.dirname(__FILE__), "vendor", "sinatra"))
      system "git submodule add git://github.com/bmizerany/sinatra.git vendor/sinatra"
    else
      system "git submodule update"
    end
  end
end