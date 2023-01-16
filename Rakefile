#!/usr/bin/env rake

require 'rollbar'
require 'rollbar/rake_tasks'
require 'rake'
require 'dotenv'

# load env variables
Dotenv.load

task :environment do
  Rollbar.configure do |config |
    config.access_token = ENV['ROLLBAR_ACCESS_TOKEN']
  end
end

task :hello do
  puts 'Hello World!'
end