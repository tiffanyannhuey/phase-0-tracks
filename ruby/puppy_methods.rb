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

fido = Puppy.new
fido.fetch("ball")
fido.speak(5)
fido.roll_over
fido.dog_years(5)
fido.beg("biscuits")