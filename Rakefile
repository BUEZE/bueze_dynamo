#Dir.glob('./{models,helpers,controllers}/*.rb').each { |file| require file }
require 'sinatra/activerecord/rake'
require 'rake/testtask'
require 'config_env/rake_tasks'

task default: [:spec]

task :config do
  ConfigEnv.path_to_config("#{__dir__}/config/config_env.rb")
end

desc 'Run all tests'
Rake::TestTask.new(:spec) do |t|
  t.pattern = 'spec/*_spec.rb'
end

namespace :db do
  require_relative 'models/init.rb'
  require_relative 'config/init.rb'

  desc "Create bookrankings table"
  task :migrate do
    begin
      Bookrankings.create_table
      puts 'Bookrankings table created'
    rescue Aws::DynamoDB::Errors::ResourceInUseException => e
      puts 'Bookrankings table already exists'
    end
  end
end

