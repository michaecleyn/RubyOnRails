class HelloController < ApplicationController

#controllers mostly render views
	def index
		@name = params[:name]
	end
end
