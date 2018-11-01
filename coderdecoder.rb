def code(message, func)
	message = message.split(//)
	codedmessage = ""
	5.times do
		message.each do |letter|
			puts letter
			letter = letter.succ
			puts letter
		end
	end
	return message
end
