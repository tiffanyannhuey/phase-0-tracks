# SantaCon Simulator

# Define a Santa class 
  # In this class there should be three instance methods
    # A speak method that will print "Ho, ho, ho! Haaaappy holidays!"
    # An eat milk and cookies method that takes a cookie type 
      # ("snickerdoodle") and says "That was a good [type of cookie] "
    # An initialize method that prints "Initializing Santa instance.."

class Santa
  #refactor getter methods
  attr_reader :age, :ethnicity
  attr_accessor :gender

# An initialize method that prints "Initializing Santa instance.."
# The initialize method will have the following attributes
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

# A speak method that will print "Ho, ho, ho! Haaaappy holidays!"
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

# An eat milk and cookies method that takes a cookie type 
      # ("snickerdoodle") and says "That was a good [type of cookie] "
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

# Getter methods to access instance variables outside Santa class
# There are two getter methods - age and ethnicity

  #def age
  #  @age
  #end

  #def ethnicity
  #  @ethnicity
  #end 



# This method ages Santa by one year
  def celebrate_birthday(current_age)
    new_age = @age + 1
    @age = new_age
  end 

# This method takes a reindeer's name as an argument and moves that 
# reindeer in last place
  def get_mad_at(reindeer)
    bad_reindeer = @reindeer_ranking.index(reindeer) #find the index of the bad reindeer
    @reindeer_ranking.delete_at(bad_reindeer) #remove the reindeer from the array
    @reindeer_ranking << reindeer #add the reindeer to the end of the array
    @reindeer_ranking #return the new result 
  end 

# Setter methods to set instance variables outside Santa class

#This setter method allows gender to be reassigned from outside the class definition
  def gender=(new_gender)
    @gender = new_gender
  end 


end 


# Step 1 - Driver Code for instance methods 

 # Kris_Kringle = Santa.new
  # Kris_Kringle.speak
  # Kris_Kringle.eat_milk_and_cookies("chocolate chip cookie")
  
# Step 2 - Driver Code for attributes 

  # testing single instance:
     Kris_Kringle = Santa.new('male', 'Romanian') 
     Kris_Kringle.about
  
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


# Test Getter methods
  santas.each do |santa|
    puts "This Santa's age is #{santa.age}."
    puts "This Santa's ethnicity is #{santa.ethnicity}"
  end

# Test Setter methods

  # test birthday method
    Kris_Kringle.celebrate_birthday(@age)
    Kris_Kringle.about 
  
  # test get mad at reindeer method
    Kris_Kringle.get_mad_at("Dasher")
    Kris_Kringle.about 

  # test gender reassignment method
    Kris_Kringle.gender = "Manly Man"
    Kris_Kringle.about 









