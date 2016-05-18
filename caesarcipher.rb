def cipher(string, shift)

downcase_letters = ("a".."z").to_a
upcase_letters = ("A".."Z").to_a
encoded = ""
i = 0

while i < string.length

#HANDLES DOWNCASE, UPCASE LETTERS, EMPTY SPACES, AND SYMBOLS
if downcase_letters.include?(string[i]) == true
	letters = downcase_letters
elsif upcase_letters.include?(string[i]) == true
	letters = upcase_letters
else 
	encoded += string[i].to_s
	i+=1
	next	
end

	number = letters.index(string[i])

#HANDLES SHIFTING PAST Z - WORKABLE SHIFTS INCLUDE 0-26, ADDED ERROR HANDLING FOR SHIFTS OVER 26
	if shift > 26
		shift = shift % 26
	end

	if number + shift > 25
		number = number - 26
	end

#RECORDS DATA INTO VARIABLE FOR PROCESSING
encoded += letters[number + shift]

i+=1

end

#RETURNS ENCRYPTED MESSAGE TO THE TERMINAL
return encoded

end

puts cipher("rZjoey!", 3)
