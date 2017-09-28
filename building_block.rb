def caesar_cipher (phrase, shift)

	cipher = phrase.split("")

	shift = shift % 26

	cipher.each do |character|
		if character =~ (/[A-zA-Z]/)
			shift.times do
				character.next! 
			end
		end 
		if character.length > 1
			character[0] = character[1]
			character[1] = ""
		end 
	end
	return cipher.join("")
end 

def stock_picker (prices)

	buy_price = 0
	sell_price = 0
	profit = 0

	for i in 0..prices.length
		for j in i+1... prices.length
			if prices[j] - prices[i] > profit
				profit = prices[j] - prices[i]
				buy_price = i
				sell_price = j
			end 
		end 
	end 

	return [buy_price, sell_price]
end 

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

	puts caesar_cipher("What a String!", 5)
	
	puts stock_picker([17,3,6,9,15,8,6,1,10])

	puts substrings("Howdy partner, sit down! How's it going?" ,
		["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
end  

