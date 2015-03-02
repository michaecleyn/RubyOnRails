require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :form
end

EMAILS = []

post '/submit' do
	name = params[:name]
	email = params[:email]
	EMAILS << name + " " + email
	erb :submit, locals: {x: name, y: email}
end
