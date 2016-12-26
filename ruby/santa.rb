# SantaCon Simulator

# Define a Santa class 
  # In this class there should be three instance methods
    # A speak method that will print "Ho, ho, ho! Haaaappy holidays!"
    # An eat milk and cookies method that takes a cookie type 
      # ("snickerdoodle") and says "That was a good [type of cookie] "
    # An initialize method that prints "Initializing Santa instance.."

class Santa

#The initialize method will have the following attributes
  # gender, which will be a string passed in on initialization
  # ethnicity, which will be a string passed in on initialization
  # reindeer_ranking, an array of reindeer from most preferred to least preferred. 
    # This is not passed in on initialization; it simply gets a defaulta value
  # age, which is not passed in on initialized and defaults to 0 
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender 
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0 
  

  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}."
  end

# This is a test method to show the attributes of each Santa
   def about
    puts "This is the Santa profile:"
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Reindeer ranking: #{@reindeer_ranking}"
    puts "Age: #{@age}"
  end 
end 


# Step 1 - Driver Code for instance methods 

  # Kris_Kringle = Santa.new
  # Kris_Kringle.speak
  # Kris_Kringle.eat_milk_and_cookies("chocolate chip cookie")
  
# Step 2 - Driver Code for attributes 

  # testing single instance:
    # Kris_Kringle = Santa.new('male', 'Romanian') 
    # Kris_Kringle.about
  
  # testing multiple Santa entries 
  # create an empty array 
  santas = []
  
  # make an array to gender types to store as one attribute
  santa_genders = ['male', 'female', 'not sure', 'agender']
  # make a second array of ethnicities to store as the second attribute
  santa_ethnicities = ['romanian', 'north polish', 'martian', 'earthling']
  
  # FOR the length of the gender array, add the attributes at each index to the santa array 
  santa_genders.length.times do |i|
    santas << Santa.new(santa_genders[i], santa_ethnicities[i]) 
  end 
  
  # Loop through each Santa profile to see the attributes 
  santas.each do |santa|
    santa.about
  end 










