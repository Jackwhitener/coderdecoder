def code(message)
	5.times do
		message.length.times do |letter|
			message[letter] = message[letter].succ!
		end
	end
	return message
end
def decode(message)

end