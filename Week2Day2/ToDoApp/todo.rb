require 'sinatra'

@@todos = []

get '/' do
  erb :todos, locals: { todos: @@todos }
end
