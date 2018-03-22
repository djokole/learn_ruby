def translateW word
	word = word.downcase
	if isVowel(word[0])
		newWord = word + 'ay'
	elsif isQU(word)
		word = moveFtL(word)
		word = moveFtL(word)
	else 
		word = moveFtL(word)
		if isVowel(word[0])
		elsif isQU(word)
		word = moveFtL(word)
		word = moveFtL(word)
		else 
			word = moveFtL(word)
			if isVowel(word[0])
			else 
				word = moveFtL(word)
			end
		end
	end
	newWord = word + 'ay'
	return newWord
end

def translate sentence
	words = sentence.split(' ')
	puts words
	words.map! { |word| translateW word }
	newSentence = words.join(' ')
	puts newSentence
	return newSentence
end

def isVowel char
	c = char.downcase
	if c =='a' or c =='e' or c =='i' or c =='o' or c == 'u'
		return true
	else
		return false
	end
end

#moves first character to last position
#(to be used here only if first character is a consonant)
def moveFtL word
	wordArray = word.split(//)
	firstChar = wordArray[0]
	wordArray.shift
	wordArray.push(firstChar)
	word1 = wordArray.join
	return word1
end

def isQU phrase
	phrase = phrase.downcase
	if phrase[0] == 'q' && phrase[1] == 'u'
		return true
	else
		return false
	end
end



