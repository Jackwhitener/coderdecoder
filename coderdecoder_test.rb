require "minitest/autorun"
require_relative "coderdecoder.rb"
class My_test < Minitest::Test
	def test1
		assert_equal(1,1)
	end
	def test_for_first_letter
		message = "a"
		int = 5
		assert_equal("f", code(message,int))
	end
	def test_for_three_letters
		message = "abc"
		int = 5
		assert_equal("fgh", code(message,int))
	end
	def test_for_real_message
		message = "apples to apples crust to crust"
		int = 5
		assert_equal("fuuqjx yt fuuqjx hwzxy yt hwzxy", code(message, int))
	end
	def test_for_punctuated_message
		message = "Hello, this is a test message!"
		int = 5
		assert_equal("Mjqqt, ymnx nx f yjxy rjxxflj!", code(message, int))
	end
	def test_for_error_message
		message = "!@#$%^&"
		int = 5
		assert_equal("!@#$%^&", code(message, int))
	end
	def test_for_decoder
		message = "f"
		int = 5
		assert_equal("a", decode(message, int))
	end
	def test_for_m
		message = "m"
		int = 5
		assert_equal("h", decode(message, int))
	end
	def test_for_two
		message = "fg"
		int = 5
		assert_equal("ab", decode(message, int))
	end
	def test_for_real_message_decoded
		message = "fuuqjx yt fuuqjx hwzxy yt hwzxy"
		int = 5
		assert_equal("apples to apples crust to crust", decode(message, int))
	end
	def test_for_punctuated_message_decoded
		message = "Mjqqt, ymnx nx f yjxy rjxxflj!"
		int = 5
		assert_equal("Hello, this is a test message!", decode(message, int))
	end
	def test_for_invalid_character_decoded
		message = "*&&%#-"
		int = 5
		assert_equal("*&&%#-", decode(message, int))
	end
	def test_for_int
		message = 123
		int = 5
		assert_equal("678", decode(message, int))
	end
	def test_for_space_int
		message = 1, 2, 3
		int = 5
		assert_equal("[6, 7, 8]", decode(message, int))
	end
	def test_for_coding_farther
		message = "abc"
		int = 10
		assert_equal("klm", code(message, int))
	end
	def test_for_decoding_farther
		message = "klm"
		int = 10
		assert_equal("abc", decode(message, int))
	end
end