require "minitest/autorun"
require_relative "coderdecoder.rb"
class My_test < Minitest::Test
	def test1
		assert_equal(1,1)
	end
	def test_for_first_letter
		message = "a"
		func = 0
		assert_equal("f", code(message,func))
	end
	def test_for_three_letters
		message = "abc"
		func = 0
		assert_equal("fgh", code(message,func))
	end
end