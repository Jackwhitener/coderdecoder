
def code(message,int)
	fails = false
	number = 0
	homeontherange = [("a".."z").to_a, ("A".."Z").to_a, ("0".."9").to_a]
	acceptableletters = homeontherange[0]
	acceptableupcase =  homeontherange[1]
	numbers = homeontherange[2]
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
	message = message.split(//)
		message.each do |letter|
			if acceptableletters.include? letter
				number = acceptableletters.index(letter)
				letter = acceptableletters[number - int]
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