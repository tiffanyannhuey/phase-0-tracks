#ask how many employees are being processed
puts "How many employees will be processed"

number_of_employees = gets.chomp

#set number of survey entries
survey_entries = number_of_employees.to_i 
#countdown to last survey
until survey_entries == 0
  survey_entries = survey_entries - 1

 

  #The Vampire Tester
  
  #ask employee name
  puts "What is your name?"
  name = gets.chomp
  
  #ask employee their age
  puts "What age are you?"
  estimated_age = gets.chomp
  estimated_age = estimated_age.to_i
  
  #ask employee what year they were born
  puts "What year were you born?"
  
  birth_year = gets.chomp 
  
  #subtract their birth year from the current year
  birth_year = birth_year.to_i 
  current_year = 2016
  actual_age = current_year - birth_year
  
  #compare to see if the ages match
  age = nil
  
  if actual_age == estimated_age
    age = true
  else actual_age != estimated_age
    age = false
  end
  
  p age
  
  
  #ask employee if they would like an order
  #of garlic bread
  #if yes, they like garlic
  #if no, they do not like garlic
  #repeat the question until they answer yes or no
  
  
  order = false
  
  
  until order == true
  
    puts "Would you like an order of garlic bread? (y/n)"
  
    answer = gets.chomp
  
     if answer == "y"
    puts "You answered yes."
     order = true
     likes_garlic_bread = true
    elsif answer == "n"
      puts "you answered no."
     order = true  
     likes_garlic_bread = false
    else
     puts "I didn't understand you."
    end
  end 
  
  p likes_garlic_bread
  
  #Would they like to enroll in health insurance?
  enroll = false
  
  until enroll == true
  
    puts "Would you like to enroll in health insurance?(y/n)"
    
    wants_health_insurance = gets.chomp
    
    if wants_health_insurance == "y"
      puts "You answered yes."
      has_insurance = true
      enroll = true
    elsif wants_health_insurance == "n"
      puts "You answered no."
      has_insurance = false
      enroll = true
    else
      puts "I didn't understand you"
    end
  end
  p has_insurance


  #Ask About Allergies. List will continue until user types done
  #Unless they like sunshine - they are definitely a vampire
  puts "List out your allergies. Type done when finished."

  completed_list = false

  until completed_list == true

    allergies = gets.chomp 
    if allergies == "done"
      puts "Thank you"
      completed_list = true
      #match conditions
        case 
        #if age right and willing to eat garlic bread or have insurance
        when age && (likes_garlic_bread || has_insurance)
          print "Probably not a vampire."
        #if age wrong and hates garlic bread OR waives insurance
        when !age && (!likes_garlic_bread || !has_insurance) 
          print "Probably a vampire."
        #when age wrong and hates garlic bread and waives insurance
        when !age && !(likes_garlic_bread && has_insurance)
          print "Almost certainly a vampire."
        #even if everything right and name is Drake Cula
        when name == "Drake Cula" 
          print "Definitely a vampire"
        #even if everything right and name is Tu Fang
        when name == "Tu Fang"
          print "Definitely a vampire" 
        else
          print "Results inconclusive."
    end

    elsif allergies == "sunshine"
      puts "Probably a vampire"
      completed_list = true
    else 
      puts "What's another one?"
    end
  end
  
 
        
end

#Add Plot Twist at end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


