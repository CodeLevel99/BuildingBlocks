def caesar_cipher (phrase, shift)

	cipher = phrase.split("")
	shift = shift % 26

	cipher.each do |character|
		if character =~ (/[a-zA-Z]/)
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

if __FILE__ == $PROGRAM_NAME

	puts caesar_cipher("What a String!", 5)
end  
