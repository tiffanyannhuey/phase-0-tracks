#Interior Design Client Details

#First, create a hash that can contain client details:
client_file = {


}


#Ask the user for client details

#What is the client name
puts "What is your name?"

client_file[:client_name] = gets.chomp

p client_file[:client_name] 

#What is the client age
puts "What is your age?"

client_age = gets.chomp
client_file[:client_age] = client_age.to_i

p client_file[:client_age]

#What city do you live in?
puts "What city do you live in?"
client_city = gets.chomp

client_file[:client_city] = client_city

p client_file[:client_city]

# How many children does the client have
puts "How many children do you have?"

client_num_childern = gets.chomp
client_file[:client_num_childern] = client_num_childern.to_i

p client_file[:client_num_childern]

#Does the client have pets? Mark true if yes, false if no
#If the client does not answer correctly, loop until they do

pet_status = false 

until pet_status == true

puts "Do you have any pets? (y/n)"
client_has_pets = gets.chomp

  if client_has_pets == "y"
    client_has_pets = true
    pet_status = true
  elsif client_has_pets == 'n'
    client_has_pets = false
    pet_status = true
  else
    puts "I didn't understand you\n"
  end
end

client_file[:client_has_pets] = client_has_pets

p client_file[:client_has_pets]

#What kind of decor does the client like? 
client_decor_liked = []

loop do
  puts "What decor theme do you like? Type done when you are finished."
  input = gets.chomp
  break if input == "done"
  client_decor_liked << input
end

client_file[:client_decor_liked] = client_decor_liked

p client_file[:client_decor_liked]

#print out client file for user
puts "\nHere is a summary of the file"
p client_file

#Ask if the user would like to make any changes?
puts "\nPlease review. Would you like to make changes? If no, type none"

want_changes = gets.chomp

#If the user says none, then skip program
#if the user wants to changes, ask for user to enter in variable

if want_changes == "none"
  puts "Thank you.\n"
else
  puts "Please type in the variable that you would want to change"

# the user needs to type in the variable to be modified. 
# if no existing variable is entered
# no changes will be made
  variable_change = gets.chomp
  variable_change = variable_change.to_sym
    case 
      when variable_change == :client_name
        puts "What is your name?"
        modified_client_name = gets.chomp
        client_file[:client_name] = modified_client_name
      when variable_change == :client_age
        puts "What is your age?"
        modified_client_age = gets.chomp
        client_file[:client_age] = modified_client_age.to_i
      when variable_change == :client_city
        puts "What city do you live in?"
        modified_client_city = gets.chomp
        client_file[:client_city] = modified_client_city
      when variable_change == :client_has_pets
          modified_pet_status = false 

          until modified_pet_status == true
          
          puts "Do you have any pets? (y/n)"
          modified_client_has_pets = gets.chomp
          
            if modified_client_has_pets == "y"
              modified_client_has_pets = true
              modified_pet_status = true
            elsif modified_client_has_pets == 'n'
              modified_client_has_pets = false
              modified_pet_status = true
            else
              puts "I didn't understand you\n"
            end
          end
          client_file[:client_has_pets] = modified_client_has_pets
      when variable_change == :client_decor_liked
        modified_decor_liked = []
        loop do
          puts "What decor theme do you like? Type done when you are finished."
          input = gets.chomp
          break if input == "done"
          modified_decor_liked << input
        end
        client_file[:client_decor_liked] = modified_decor_liked
    else
      puts "No variable change requested\n"
    end
end


#If the user types none or after the variable is modified
# print the client file summary

puts "\nHere is a summary of the file"
p client_file