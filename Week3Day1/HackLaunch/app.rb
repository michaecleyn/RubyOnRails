require 'sinatra'
require 'sinatra/reloader'

# in rails you don't have to write erb :form, because it will automatically
# render this file and search it out in the view.
# you can only render one file in a route.

#post requests pages always happen after an actiong. Like a thank you for signing in page.
#post requests don't even work if you don't send info or submit anything

get ('/') do
 erb :form
end

CONTACTS = []

post ('/submitted') do
	thename = params[:name]
	theemail = params[:email]
	CONTACTS << theemail
	erb :thanks, locals: {fries: thename, burger: theemail}
end
