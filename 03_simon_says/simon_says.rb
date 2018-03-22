#write your code here
def echo word
	return word
end

def shout word
	return word.upcase
end

def repeat (word, x = 2)
	return [word] * x * ' '
end

def start_of_word (word, x = 1)
	return word[0, x]
end

def first_word (sentence)
	sentence.split.first
end

SMALL_WORDS = ['the', 'over', 'and', 'an']
def titleize (words)
	wordsArray = words.split(' ')
	wordsArray.each do |word|
		if SMALL_WORDS.index(word) != nil && wordsArray.index(word) > 0
			word
		else
			word.capitalize!
		end
	end
	return wordsArray.join(' ')
end
	

	