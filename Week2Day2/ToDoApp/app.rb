require 'sinatra'
require	'sinatra/reloader'

class Todo
	attr_accessor :done, :text, :important
end

TODOS = []

get '/' do
	erb :todos, locals: {todos: TODOS}
end

post '/add' do
	t = Todo.new
	t.text = params[:todo]

	TODOS << t
	redirect('/')
end

get ('/done/:i') do
	TODOS[params[:i].to_i].done = true
	redirect('/')
end

get ('/important/:i') do 
	TODOS[params[:i].to_i].important = true
	redirect('/')
end

# /add?todo=Talk to michael