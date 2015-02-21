require 'sinatra'

get ('/') do
	"Hello Michael #{params.to_s}"
end
