puts "What is your hamsters name?"
name = gets.chomp


puts "How noisy is your hamster? (1-10)"
volume = gets.chomp
volume.to_i(base=10)


puts "What is your hamsters fur color"
color = gets.chomp


puts "Is your hamster a good candidate for adoption (y/n)"

	adoption = gets.chomp
  if adoption == "y"
	adoption = true
  elsif adoption == "n"
	adoption = false
  else
	adoption = nil
 end




puts "What is the estimated age of your hamster?"
age = gets.chomp
if age.empty?
	nil
else 
	age = "age".to_i
end

puts "#{name} Adoption Profile"
puts "Your hamsters name is #{name}"
puts "#{name} has a #{volume} noise level"
puts "#{name} has #{color} fur "
puts "Is #{name} a candidate: #{adoption}"
puts "We think #{name}'s age is #{age}"

