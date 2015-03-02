require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :form
end

post '/submit' do
	name = params[:name]
	email = params[:email]
	erb :submit, locals: {x: name, y: email}
end
