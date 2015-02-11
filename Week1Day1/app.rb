require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Home page"
end

get '/hello/:name' do
  "Hello #{params[:name]}"
  # could do "hello" + params[:name]
end

get '/hello/:name/:second' do
  params.to_s
  "This is a test"
  "this is another test"
end
