class GoodbyeController < ApplicationController
  def index
  	@name = params[:name]
  end
end
