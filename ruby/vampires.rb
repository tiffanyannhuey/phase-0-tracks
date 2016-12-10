#The Vampire Tester

#ask employee name
puts "What is your name?"
name = gets.chomp

#ask age and what year employee was born
puts "What age are you?"
estimated_age = gets.chomp
estimated_age = estimated_age.to_i

puts "What year were you born?"

estimated_year = gets.chomp 
estimated_year = estimated_year.to_i 
current_year = 2016
actual_age = current_year - estimated_year

age = false

if actual_age == estimated_age
  age = true
else 
  age 
end

p age


#ask employee if they would like an order
#of garlic bread
puts "Would you like an order of garlic bread? (y/n)"
garlic_bread = false

answer = gets.chomp
  
if answer == "y"
  garlic_bread = true

else   
  garlic_bread 
end 


p garlic_bread

#Would they like to enroll in health insurance?
puts "Would you like to enroll in health insurance?(y/n)"

insurance = false

enroll = gets.chomp

if enroll == "y"
  insurance = true
else
  insurance
end 

p insurance

#match conditions
case 
when age && (garlic_bread || insurance) 
  puts "Probably not a vampire."
when !age && (!garlic_bread || !insurance) 
  puts "Probably a vampire."
when !age && !garlic_bread && !insurance
  puts "Almost certainly a vampire."

  puts "Results inconclusive."
end


when ["Drake Cula","Tu Fang"].include? name
  puts "Definitely a vampire."
else 

