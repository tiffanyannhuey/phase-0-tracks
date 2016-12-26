# SantaCon Simulator

# Define a Santa class 
  # In this class there should be three instance methods
    # A speak method that will print "Ho, ho, ho! Haaaappy holidays!"
    # An eat milk and cookies method that takes a cookie type 
      # ("snickerdoodle") and says "That was a good [type of cookie] "
    # An initialize method that prints "Initializing Santa instance.."

class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}."
  end

  def initialize
    puts "Initializing Santa instance..."
  end

end 

# Driver Code 

Kris_Kringle = Santa.new 

Kris_Kringle.speak
Kris_Kringle.eat_milk_and_cookies("chocolate chip cookie")
