
def code(message)
	fails = false
	number = 0
	acceptableletters = ["a","b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	acceptableupcase = ["A","B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "x", "Y", "Z"]
	arr = []
	if message.class != String
		message = message.to_s
	end
	message = message.split(//)
		message.each do |letter|
			if acceptableletters.include? letter
				number = acceptableletters.index(letter)
				letter = acceptableletters[number + 5]
				arr << letter
			elsif acceptableupcase.include? letter
				number = acceptableupcase.index(letter)
				letter = acceptableupcase[number + 5]
				arr << letter
			else
				# fails = true
				arr << letter
			end
		end
	if fails == false
		return arr.join
	else
		return "Error: Invalid Character Detected."
	end

end
def decode(message)
	fails = false
	number = 0 
	acceptablepunc = ["[", "]",",", ".", "?", "!", "(", ")", ";", ":", " ", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
	acceptableletters = ["a","b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	acceptableupcase = ["A","B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "x", "Y", "Z"]
	arr = []
	if message.class != String
		message = message.to_s
	end
	# puts message
	message = message.split(//)
		message.each do |letter|
			if acceptableletters.include? letter
				number = acceptableletters.index(letter)
				letter = acceptableletters[number - 5]
				arr << letter
				fails = false
			elsif acceptableupcase.include? letter
				number = acceptableupcase.index(letter)
				letter = acceptableupcase[number - 5]
				arr << letter
				fails = false
			else
				arr << letter
				# puts "Failure. Bad character detected: #{letter}"
				# fails = true
			end
		end
		return arr.join
end