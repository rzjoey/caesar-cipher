def cipher(string, shift)

downcase_letters = ("a".."z").to_a
upcase_letters = ("A".."Z").to_a
encoded = ""
i = 0

while i < string.length

#HANDLES EMPTY SPACES
if string[i] == " "
	i+=1
	encoded += " "
	next
end

#HANDLES CAPITAL LETTERS
if downcase_letters.include?(string[i]) == true
			letters = downcase_letters
else
			letters = upcase_letters
end

	number = letters.index(string[i])

#HANDLES SHIFTING PAST Z - WORKABLE SHIFTS INCLUDE 0-26
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

puts cipher("rZjoey", 3)
