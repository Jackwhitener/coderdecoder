require "minitest/autorun"
require_relative "coderdecoder.rb"
class My_test < Minitest::Test
	def test1
		assert_equal(1,1)
	end
	def test_for_first_letter
		message = "a"
		assert_equal("f", code(message))
	end
	def test_for_three_letters
		message = "abc"
		assert_equal("fgh", code(message))
	end
	def test_for_real_message
		message = "apples to apples crust to crust"
		assert_equal("fuuqjx yt fuuqjx hwzxy yt hwzxy", code(message))
	end
	def test_for_punctuated_message
		message = "Hello, this is a test message!"
		assert_equal("Mjqqt, ymnx nx f yjxy rjxxflj!", code(message))
	end
	def test_for_error_message
		message = "!@#$%^&"
		assert_equal("!@#$%^&", code(message))
	end
	def test_for_decoder
		message = "f"
		assert_equal("a", decode(message))
	end
	def test_for_m
		message = "m"
		assert_equal("h", decode(message))
	end
	def test_for_two
		message = "fg"
		assert_equal("ab", decode(message))
	end
	def test_for_real_message_decoded
		message = "fuuqjx yt fuuqjx hwzxy yt hwzxy"
		assert_equal("apples to apples crust to crust", decode(message))
	end
	def test_for_punctuated_message_decoded
		message = "Mjqqt, ymnx nx f yjxy rjxxflj!"
		assert_equal("Hello, this is a test message!", decode(message))
	end
	def test_for_invalid_character_decoded
		message = "*&&%#-"
		assert_equal("*&&%#-", code(message))
	end
	def test_for_int
		message = 123
		assert_equal("123", decode(message))
	end
	def test_for_space_int
		message = 1, 2, 3
		assert_equal("[1, 2, 3]", decode(message))
	end
end