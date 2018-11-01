def code(message)
	message = message.split(//)
	5.times do
		message.each do |letter|
			if letter == " "
				# puts " "
			elsif letter == ","
			elsif letter == "."
			elsif letter == "!"
			elsif letter == "?"
			else
			letter = letter.succ!
		end
		end
	end
	message.each do |letter|
		letter.delete_prefix("a")
	end
	return message.join
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