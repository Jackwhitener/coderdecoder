def code(message)
	5.times do
		message.length.times do |letter|
			message[letter] = message[letter].succ!
		end
	end
	return message
end
def decode(message)
	21.times do
		message.length.times do |letter|
			message[letter] = message[letter].succ!
			puts message
		end
	end
	return message
end