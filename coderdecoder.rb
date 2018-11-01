def code(message)
	fails = false
	acceptablepunc = [",", ".", "?", "!", "(", ")", ";", ":", " "]
	acceptableletters = ["a","b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	acceptableupcase = ["A","B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "x", "Y", "Z"]
	message = message.split(//)
	5.times do
		message.each do |letter|
			if acceptablepunc.include? letter
			elsif acceptableletters.include? letter
			letter = letter.succ!
			elsif acceptableupcase.include? letter
			letter = letter.succ!
			else
			fails = true
			end
		end
	end
	message.each do |letter|
		letter.delete_prefix("a")
	end
	if fails == false
	return message.join
	else
	return "Error: Invalid Character Detected."
end
end
def decode(message)
	arr = []
	message = message.split(//)
	21.times do
		message.each do |letter|
			if letter == " "
			elsif letter == ","
			elsif letter == "."
			elsif letter == "!"
			elsif letter == "?"
			# puts " "
			else
			# puts "active letter: #{letter}"
			letter = letter.succ!
			# p letter
		end
		end
		# p arr
	end
	message.each do |letter|
		# p arr
		# puts "Letter before delete_prefix #{letter}"
		letter = letter.delete_prefix("a")
		letter = letter.delete_prefix("A")
		# puts "Letter after delete_prefix #{letter}"
		arr << letter
	end
	return arr.join
end