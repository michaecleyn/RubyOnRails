class WelcomeController < ApplicationController
  def index
  end

  def submit
  	email = params[:email]
  	name = params[:name]
  	@x = Gravatar.new(email).image_url
  	u = User.new(email: email, name: name)
  	u.save

  	redirect_to welcome_path, error: 'screw you'
  end
end
