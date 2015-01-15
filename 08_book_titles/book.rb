class Book

	def title=(title)
		words = title.split(" ")
		words = [words[0].capitalize] + #capitalize the first word! +
		words[1..-1].map do |word| #for all the other words...
			little_words = %w{the and a in over of an to by down with for but yet}
			if little_words.include? word #the current word is also a 'little word'
				word #just return the word
			else
				word.capitalize  #capitalize that word
			end
		end
		@title = words.join(" ") #join all the words together to define the attribute
	end

	def title
		@title
	end
end