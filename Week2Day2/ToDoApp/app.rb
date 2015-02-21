require 'sinatra'
require	'sinatra/reloader'

class Todo
	attr_accessor :done, :text, :important
end

TODOS = []

get ('/') do
	erb :todos, locals: {todos: TODOS}
end

post '/add:todo' do
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

# this is the same as the to get requests above.
post "done/:i" do
	index = params[:i].to_i
	todo = TODOS[:index]

	todo.done = true
end

# /add?todo=Talk to michael

