def substrings(collection_of_words, dictionary) 

	collection_of_words.downcase!

	tally = Hash.new(0)

	dictionary.each do |word|
		if collection_of_words.include? word 
			tally[word] += collection_of_words.scan(/#{word}/).size
		end 
	end 

	return tally

end 

if __FILE__ == $PROGRAM_NAME

	puts substrings("Howdy partner, sit down! How's it going?" ,
		["below","down","go","going","horn","how","howdy","it","i",
			"low","own","part","partner","sit"])
end  
