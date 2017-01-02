class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    puts "woof! " * n 
  end 

  def roll_over
    puts "*rolls over*"
  end 

  def dog_years(human_age)
    dog_age = human_age * 7
    p dog_age
  end 

  def beg(treat)
    puts "Please sir, may I have some more #{treat}?"
  end 

end

#Driver Code
fido = Puppy.new
fido.fetch("ball")
fido.speak(5)
fido.roll_over
fido.dog_years(5)
fido.beg("biscuits")


class Superhero

  def initialize
    puts "Initializing new Superhero class"
  end

  def beat
    puts "Look! Its a superhero!!!!"
    puts "He is BEATING THE BAD GUYS!!"
  end

  def save(number)
      unless number == 1 then puts "He just saved #{number} damsels in distress!!!!" 
      else 
        puts "He just saved a damsel in distress!!!"
      end 
  end

end 

Justice_league = []

50.times.each do |hero|
  Justice_league << hero = Superhero.new
end 

Justice_league.each do |hero|
  hero.beat 
  hero.save(1)
end 

#Driver Code 
p Justice_league

