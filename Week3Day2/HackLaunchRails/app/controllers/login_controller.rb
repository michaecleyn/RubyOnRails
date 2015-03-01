class LoginController < ApplicationController

	def login
	end

	def admin
		@name = params[:name]
	end
end
