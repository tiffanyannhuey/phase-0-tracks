
# Declare the Shout Module
#module Shout

  #method for yelling angrily
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end 

  #method for yelling happily 
#  def self.yell_happily(words)
#    words + ", yippeeeee" + ":) !!"
#  end
#end

#Driver code to test module methods

#p Shout.yell_angrily("Where are my pants?")
#p Shout.yell_happily("I'm so happy")

module Shout
  def shout_excitedly(phrase)
    puts "Holy Toledo, #{phrase}!!!!!"
  end
end

class Sports_fan
  include Shout
end

class Confused_person
  include Shout
end 

#Driver Code

Football_fanatic = Sports_fan.new
Football_fanatic.shout_excitedly("we won the game")

me = Confused_person.new
me.shout_excitedly("am I really getting this?")


