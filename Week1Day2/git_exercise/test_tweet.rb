require "minitest/autorun"

class FirstTest < Minitest::Test
	def test_tweet_is_less_than_40
		assert_equal 40
	end
end