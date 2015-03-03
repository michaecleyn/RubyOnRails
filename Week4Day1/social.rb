require 'gravatar-ultimate'

class User
	attr_accessor	:name, :friends
	#attr_reader :email

	def email=(e)
		@email=e.downcase
	end

	def initialize
		@friends = []
	end

	def image_url
		Gravatar.new(@email).image_url
	end

# you can put this in attr accessor and it would be the same thing.
	# def friends
	# 	@friends
	# end

	def friends_with?(user)
		@friends.include?(user)
	end
end


