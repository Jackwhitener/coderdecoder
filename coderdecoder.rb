def code(message, func)
	5.times do
		message.length.times do |letter|
			message[letter] = message[letter].succ!
		end
	end
	return message
end
