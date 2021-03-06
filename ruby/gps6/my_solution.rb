# Virus Predictor

# I worked on this challenge [by myself, with the guide ].
# We spent [3] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative starts looking for the accompanying data in a specific file or file path 
# require would start looking at a pre-defined directory or you can also set a directory for it to start searching at 
#
 require_relative 'state_data'
 
 class VirusPredictor
 
   def initialize(state_of_origin, population_density, population)
     @state = state_of_origin
     @population = population
     @population_density = population_density
   end
 
 # This method will return the outputs of the predicted deaths method and the speed of spread method
 # We don't need to add variables as parameters when calling below methods because it's already accessible in the class
   def virus_effects
     predicted_deaths
     speed_of_spread
   end
 
   private
 
 # It will look for certain conditions based on the population density
 # It will calculate a prediction of death total based on the input values 
   def predicted_deaths
     # predicted deaths is solely based on population density
     if @population_density >= 200
       number_of_deaths = (@population * 0.4).floor
     elsif @population_density >= 150
       number_of_deaths = (@population * 0.3).floor
     elsif @population_density >= 100
       number_of_deaths = (@population * 0.2).floor
     elsif @population_density >= 50
       number_of_deaths = (@population * 0.1).floor
     else
       number_of_deaths = (@population * 0.05).floor
     end
 
     print "#{@state} will lose #{number_of_deaths} people in this outbreak"
 
   end
 
 # This method will calculate how fast (in months) the population density will be affected 
   def speed_of_spread #in months
     # We are still perfecting our formula here. The speed is also affected
     # by additional factors we haven't added into this functionality.
     speed = 0.0
 
     if @population_density >= 200
       speed += 0.5
     elsif @population_density >= 150
       speed += 1
     elsif @population_density >= 100
       speed += 1.5
     elsif @population_density >= 50
       speed += 2
     else
       speed += 2.5
     end
 
     puts " and will spread across the state in #{speed} months.\n\n"
 
   end
 
 end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# Iterate through each state and print out a report of all states affected 
STATE_DATA.each do |state, population_hash| 
 affected_state = VirusPredictor.new(state, population_hash[:population_density], population_hash[:population])
 affected_state.virus_effects
end 





#=======================================================================
# Reflection Section

#1. The first hash uses a string as a key with a hash rocket pointing to the values (another hash). 
# The second type of hash uses a symbol with a colon indication the value, which is an integer

#2. require_relative starts looking for the accompanying data in a specific file or file path 
# require would start looking at a pre-defined directory or you can also set a directory for it t

#.3 You can iterate through a hash with .each, .map, .each_key, .each_value
#.4 You don't have to pass instance variables in a method because the instance variables are accessible anywhere in the class
#.5 The concept that was solidified the most was Constant scope and accessing nested hashes through iteration

