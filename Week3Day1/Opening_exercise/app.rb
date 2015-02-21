require 'sinatra'
require 'sinatra/reloader'

get ('/') do
	params.to_s
end
