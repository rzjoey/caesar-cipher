def caesar_cipher(string, shift)

downcase_letters = ("a".."z").to_a
upcase_letters = ("A".."Z").to_a
encrypted = ""

string.each_char { |character|

#HANDLES DOWNCASE AND UPCASE LETTERS, SPACES, NUMBERS AND SYMBOLS
if downcase_letters.include?(character) == true
	letters = downcase_letters
elsif upcase_letters.include?(character) == true
	letters = upcase_letters
else 
	encrypted += character.to_s
	next	
end

#GET LETTER POSITION OF CURRENT CHARACTER
letter_position = letters.index(character)

#WORKABLE SHIFTS INCLUDE 0-26, ADDED ERROR HANDLING FOR CONVERTING SHIFTS OVER 26
shift = shift % 26 if shift > 26

#HANDLES SHIFTING PAST Z
letter_position = letter_position - 26 if letter_position + shift > 25
	
#ADDS ENCRYPTED CHARACTERS INTO VARIABLE
encrypted += letters[letter_position + shift]

}

return encrypted

end

puts caesar_cipher("ABC XYZ 123 !?#", 3)
