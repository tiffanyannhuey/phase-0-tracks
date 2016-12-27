
# Declare the Shout Module
module Shout

  #method for yelling angrily
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end 

  #method for yelling happily 
  def self.yell_happily(words)
    words + ", yippeeeee" + ":) !!"
  end
end

#Driver code to test module methods

p Shout.yell_angrily("Where are my pants?")
p Shout.yell_happily("I'm so happy")


