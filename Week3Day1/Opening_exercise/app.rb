require 'sinatra'
require 'sinatra/reloader'

get ('/') do
	"The params passed in are: #{params}"
end


