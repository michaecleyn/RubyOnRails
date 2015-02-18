require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Welcome, this is the home page and today's date is: #{Date.today}"
end

get '/date' do
  "#{Date.today}"
end

get '/day' do
  "Today's date is: #{Date.today.day}"
end
