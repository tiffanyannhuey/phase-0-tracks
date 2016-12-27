# Declare Flight module
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude}"
  end
end

# Declare classes for a bird 
class Bird
  include Flight
end

# Declare classes for a plane 
class Plane
  include Flight
end

#Driver code

swallow = Bird.new
swallow.take_off("2500 ft")

jet = Plane.new
jet.take_off("15000 ft")