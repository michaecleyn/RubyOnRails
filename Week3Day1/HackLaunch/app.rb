require 'sinatra'
require 'sinatra/reloader'

get ('/') do
 erb :form
end

post ('/submitted') do
 erb :thanks
end
