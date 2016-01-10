require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/config_file'
require 'sinatra/content_for'

configure do
  if ENV['DATABASE_URL'].blank?
# create a dev and production config.yml
    config_file 'config/config.yml'
  else
    ActiveRecord::Base.establish_connection ENV['DATABASE_URL']
  end

  Dir["./app/models/*.rb"].each { |file| require file }
  Dir["./app/helpers/*.rb"].each { |file| require file }
  Dir["./app/routes/*.rb"].each { |file| require file }
  Dir["./app/lib/*.rb"].each { |file| require file }

# find out what this does again

  $stdout.sync = true
end
