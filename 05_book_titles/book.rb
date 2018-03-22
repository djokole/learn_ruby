class Book
	attr_reader :title

	def title=(newTitle)
		@title = capitalizeT(newTitle)
	end

	def capitalizeT input
		smallWords = ['and', 'in', 'the', 'of', 'a', 'an'] 
		words = input.split(' ')
		words.map do |word|
			if smallWords.include?(word)
				word
			else 
				word = word.capitalize!
			end
		end
		if smallWords.include?(words[0])
			words[0].capitalize!
		end
		words.join(' ')
	end

end