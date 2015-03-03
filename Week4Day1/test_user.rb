require 'minitest/autorun'
require './social'


class UserTest < Minitest::Test
	def test_user_has_no_friends
		u = User.new
		assert_empty u.friends
	end

	def test_user_has_some_friends
		u1 = User.new
		u2 = User.new

		u1.friends << u2

		assert u1.friends_with?(u2)
	end

	def test_user_has_specific_friends
		u1 = User.new
		u2 = User.new

		refute u1.friends_with?(u2)
	end
end
