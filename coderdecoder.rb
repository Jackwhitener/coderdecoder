def code(message)
	message = message.split(//)
	5.times do
		message.each do |letter|
			letter = letter.succ!
		end
		message.each do |letter|
			letter.delete_prefix("a")
		end
	end
	return message.join
end
def decode(message)
	message = message.split(//)
	21.times do
		message.each do |letter|
			# puts "active letter: #{letter}"
			letter = letter.succ!
		end
		message.each do |letter|
			letter = letter.delete_prefix("a")
			puts letter
		end
		puts message
	end
	return message.join
end