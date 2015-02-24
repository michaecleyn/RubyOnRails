class WelcomeController < ApplicationController
  def index
  end

  def submit
  	@email = params[:email]
  	@x = Gravatar.new(@email).image_url
  end
end
