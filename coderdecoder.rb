
def code(message,int)
	fails = false
	number = 0
	numbers = ("0".."9").to_a
	acceptableletters = ("a".."z").to_a
	acceptableupcase =  ("A".."Z").to_a
	arr = []
	if message.class != String
		message = message.to_s
	end
	message = message.split(//)
		message.each do |letter|
			if acceptableletters.include? letter
				number = acceptableletters.index(letter)
				letter = acceptableletters[number + int]
				arr << letter
			elsif acceptableupcase.include? letter
				number = acceptableupcase.index(letter)
				letter = acceptableupcase[number + int]
				arr << letter
			elsif numbers.include? letter
				number = numbers.index(letter)
				letter = numbers[number + int]
				arr << letter
			else
				# fails = true
				arr << letter
			end
		end
		return arr.join
end
def decode(message,int)
	fails = false
	number = 0
	numbers = ("0".."9").to_a
	acceptableletters = ("a".."z").to_a
	acceptableupcase =  ("A".."Z").to_a
	arr = []
	if message.class != String
		message = message.to_s
	end
	# puts message
	# puts int
	message = message.split(//)
		message.each do |letter|
			if acceptableletters.include? letter
				puts "Acceptable letter: #{letter}"
				number = acceptableletters.index(letter)
				puts "Number: #{number}"
				letter = acceptableletters[number - int]
				puts "Letter now: #{letter}"
				arr << letter
			elsif acceptableupcase.include? letter
				number = acceptableupcase.index(letter)
				letter = acceptableupcase[number - int]
				arr << letter
			elsif numbers.include? letter
				number = numbers.index(letter)
				letter = numbers[number - int]
				arr << letter
			else
				arr << letter
			end
		end
		return arr.join
end