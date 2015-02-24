require 'sinatra'
require 'sinatra/reloader'

get ('/add') do
 	erb :calculator, locals: {answer: nil }
end

post ('/add') do
	num1 = params[:num1].to_i
 	num2 = params[:num1].to_i

 	answer = num1 + num2
 	erb :calculator, locals: {answer: answer}
end
