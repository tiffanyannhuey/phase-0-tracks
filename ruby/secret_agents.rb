#encrypt method
#use the index to advance every letter of a string by 
#one character
#add a count of plus one to move to the next character
#stop the loop when the character length is reached

def encrypt(str)
  index = 0 
  while index < str.length
    #switched to the letter following it, alphabetically - String
   encrypt_output = str[index].next
       if encrypt_output == "aa"
       encrypt_output = "a"
       end
  p encrypt_output
  index += 1
  end

end

  
puts encrypt("hello")
 #Example Input: "hello"
 #Example Output: "ifmmp"
puts encrypt("zoo")
 #Example Input: "zoo"
 #Example Output: "appa"



#decrypt method
#use the index to have the characters go back one letter
#add a count of plus one to move to the next character
#stop the loop when the character length is reached

def decrypt(str)
 
 index=0
 while index < str.length
  #switch to leeter preceding it, alphabetically - string
   output = (str[index].ord-1).chr
   p output.tr("`", "z")
   index += 1  
 end
end



puts decrypt("ifmmp")
 #Example Input: "ifmmp"
 #Example Output: "hello"

puts decrypt("app")
#Example Input: "app"
 #Example Output: "zoo"

#Test out program with driver code
encrypt("abc")
#should return "bcd"
encrypt("zed")
#should return "afe"
decrypt("bcd")
#should return "abc"
decrypt("afe")
#should return "zed"

#Try a method call
decrypt(encrypt("swordfish"))
#Example output: "swordfish"
#This didn't work. We think it doesn't work for the following reasons
#There is a difference between p, puts, and print 
#It looks like print and puts have nil
#When applying p to the output of the method
#The output lists out the characters on a new line
#The characters have been encrypted because the initial word was a string
#But they haven't been decrypted
#We think that it hasn't been depcrypted
#Because the decrypt method doesn't recognize that encrypt is a string


#INTERFACE


#Write a loop 
 #If encrypt, call encrypt(gets.chomp)
 #If decrypt, call decrypt(gets.chomp)
 #Else, repeat the question
valid_input = false

until valid_input == true

#First put a question asking the user what they would like to do (encrypt or decrypt)
puts "Would you like to encrypt or decrypt a password?"

#The user selects either to encrypt or decrypt
answer = gets.chomp


if answer == "encrypt"
   puts "What is the password?"
  password = gets.chomp
  p encrypt("#{password}")
  valid_input = true
elsif answer == "decrypt"
   puts "What is the password?"
  password = gets.chomp
  p decrypt("#{password}")
  valid_input = true
else
  puts "I didn't understand"
end

end

puts "Thanks"







