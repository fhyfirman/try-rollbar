require 'rollbar'
require 'dotenv'

# load env variables
Dotenv.load

Rollbar.configure do |config|
  config.access_token = ENV['ROLLBAR_ACCESS_TOKEN']
  # Other Configuration Settings
end

Rollbar.error("Running Script")

begin
  unknown_run_script ARGV
rescue Exception => e # Never rescue Exception *unless* you re-raise in rescue body
  Rollbar.error(e)
  raise e
end

Rollbar.info("Script ran successfully")