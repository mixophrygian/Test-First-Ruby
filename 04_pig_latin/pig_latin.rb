def translate(input)
	all_words = []
	pig_word = ""
	input.split.map do |word, i|

		first_vowel = word.index(/[aeiou]/) #dat first vowel occurence

		if first_vowel == 0 #words that begin with a vowel
			pig_word = word + "ay"


		elsif word.include? "qu" #words that don't begin with a vowel but include "qu".
			first_vowel = word.index(/[aeio]/) #first vowel not counting "u"
			start_index = word.index("q")
			prefix = word[0..(first_vowel-1)] + "ay"
			pig_word = word[first_vowel..-1] + prefix
		end


		if first_vowel >= 1 #words that don't begin with vowels or have "qu"
			prefix = word[0..first_vowel-1] + "ay" 
			pig_word = word[first_vowel..-1] + prefix
		end	


		all_words << pig_word
	end
	"#{[all_words].join(" ")}"
end
