#write a method that will take a spy's name and
# create a fake name with it by doing the following
  #swapping the first and last name
  #Changing all of the vowels (a,e,i,o,u) to the 
  #next vowel, and all of the consonants (everything else
  # besides the vowels) to the next consonant in the alphabet

#this method shifts letters to its next vowel or consonant
#create arrays for all the vowels and another one for all the consonants
#if the vowel array contains the letter 
  #if the vowel is 'u', then it will default to 'a'
  #or else it will advance the next vowel in the array
#if the consonant array contains the letter
  #if the consonant is 'z' it will default to 'b'
  #or else it will advance to the next consonant in the array
def letter_changer(x)
  vowels = ['a','e','i','o','u']
  consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  if vowels.include? x
    if x == 'u'
        x = 'a'
    else
    index_x = vowels.index(x)
    next_vowel = vowels[index_x + 1]
    end
  elsif consonants.include? x
    if x == 'z'
        x = 'b'
    else
    index_x = consonants.index(x)
    next_consonant = consonants[index_x + 1]
    end
  end
end

letter_changer('a')
letter_changer('b')
letter_changer('z')
letter_changer('u')


#convert the string into an array to split first name from last name
  #swap the first name and last name 
  #make uppercase letters into lowercase letters
#join the array back into a string to combine the letters together
#then, split the string into an array so that we can evaluate each letter
#each letter will modify to the next letter
  #all vowels will shift one forward
  #all consonants will shift one forward



def swap_name(name)
  new_name = name.downcase.split.reverse
  new_name = new_name.join(" ")
  new_name = new_name.chars
  new_name.map! do |letter|
    if letter == " "
      " "
    else
      letter_changer(letter)
    end
  end
  new_name = new_name.join('')
end  




#provide a user interface that lets a user enter a name and get a fake name back
#store the name and secret name in a hash
#they can repeat this until they enter 'quit'
alias_list = {}

loop do
  puts "Please enter your name to get a secret name. Type 'quit' when you are done entering names."
  user_input = gets.chomp
  break if user_input == "quit"
  name = user_input
  secret_name = swap_name(user_input)
  puts "Your alias is #{secret_name}."
  alias_list.store(name, secret_name) 
end



#once the user exits the program, iterate through the data structure
#print all the data that the user has entered

puts "Here is the alias list of names "
alias_list.each do |name, secret_name|
 puts "#{name} is actually #{secret_name}"
end







