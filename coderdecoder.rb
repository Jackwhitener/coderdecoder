def code(message, func)
	if func == 0
		x = 5
	elsif func == 1
		x = 21
	end
	x.times do
		message.length.times do |letter|
			message[letter] = message[letter].succ!
		end
	end
	return message
end
