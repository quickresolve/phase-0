# Create a Car Class from User Stories


# I worked on this challenge with: Andria Reta.


# 2. Pseudocode
=begin
-Create a Car CLASS with ATTRIBUTES including MODEL & COLOR with a METHOD for customization.

-Define distance as an ATTRIBUTE that the car travels.

-Define speed as a VAR with a METHOD that allows the car to accelerate & descelerate including starting and stoping.

-Define direction as a VAR with a METHOD that allows the car to turn left or right.

-Print output after each change in car action to provide play by play of delivery game.
=end

# 3. Initial Solution

class Car
def initialize(year, model, color)
 @year = year
 @model = model
 @color = color
 $current_speed = 0
 @total_distance = 0
 @steer = 0
end

def customCar
 puts "You are driving a #{@year} #{@color} #{@model} car."
end

def travel(miles)
 @total_distance += miles
 #puts "You've traveled #{@total_distance} miles."
end

def total_distance
  puts "You've traveled #{@total_distance} miles."
end

def accelerate(mph)
 $current_speed += mph
 puts "You are driving #{$current_speed} mph."
end

def deccelerate(mph)
 $current_speed -= mph
 puts "You are driving #{$current_speed} mph."
end

def current_speed
 puts "You are driving #{$current_speed} mph."
end

def direction(string)
   @steer = string
 puts "Spin wheel #{@steer} to turn."
end

def stop
  $current_speed = 0
  puts "You have stopped at a stop sign."
end


def park
 $current_speed = 0
 puts "You have are at your delivery destination!"
end

end




class RoadRules

def initialize(speed_limit)
 @speed_limit = speed_limit
end

def speedcheck
  $current_speed = current_speed
end

def drive(car)
  puts "The speed limit is #{@speed_limit} mph."
  if @speed_limit > $current_speed
    car.accelerate(@speed_limit - $current_speed)
  elsif @speed_limit < $current_speed
    car.deccelerate($current_speed - @speed_limit)
  else
    $current_speed
  end
end

end


class Pizza
def initialize(quantity, size, toppings, crust, restrictions)
  @quantity = quantity
  @size = size
  @toppings = toppings
  @crust = crust
  @restrictions = restrictions
end

def desc_pizza
  puts "Here is your order of #{@quantity} #{@size} #{@restrictions} #{@crust} #{@toppings} pizza(s)!"
end

end



# 4. Refactored Solution

class Car
def initialize(year, model, color)
 @year = year
 @model = model
 @color = color
 $current_speed = 0
 @total_distance = 0
 @steer = 0
end

def customCar
 puts "You are driving a #{@year} #{@color} #{@model} car."
end

def travel(miles)
 @total_distance += miles
 #puts "You've traveled #{@total_distance} miles."
end

def total_distance
  puts "You've traveled #{@total_distance} miles."
end

def accelerate(mph)
 $current_speed += mph
 puts "You are driving #{$current_speed} mph."
end

def deccelerate(mph)
 $current_speed -= mph
 puts "You are driving #{$current_speed} mph."
end

def current_speed
 puts "You are driving #{$current_speed} mph."
end

def direction(string)
   @steer = string
 puts "Spin wheel #{@steer} to turn."
end

def stop
  $current_speed = 0
  puts "You have stopped at a stop sign."
end


def park
 $current_speed = 0
 puts "You have are at your delivery destination!"
end

end




class RoadRules
attr_accessor :current_speed

def initialize(speed_limit)
 @speed_limit = speed_limit
end


def drive(car)
  puts "The speed limit is #{@speed_limit} mph."
  if @speed_limit > $current_speed
    car.accelerate(@speed_limit - $current_speed)
  elsif @speed_limit < $current_speed
    car.deccelerate($current_speed - @speed_limit)
  else
    $current_speed
  end
end

end


class Pizza
def initialize(quantity, size, toppings, crust, restrictions)
  @quantity = quantity
  @size = size
  @toppings = toppings
  @crust = crust
  @restrictions = restrictions
end

def desc_pizza
  puts "Here is your order of #{@quantity} #{@size} #{@restrictions} #{@crust} #{@toppings} pizza(s)!"
end

end




# 1. DRIVER TESTS GO BELOW THIS LINE

#Driver Code

car = Car.new('95', "Camry","Blue")
car.customCar
road1 = RoadRules.new(25)
road1.drive(car)
car.travel(0.25)
car.stop
car.direction("right")
road2 = RoadRules.new(35)
road2.drive(car)
car.travel(1.5)
car.current_speed
road3 = RoadRules.new(15)
road3.drive(car)
car.travel(0.25)
car.stop
car.direction("left")
road4 = RoadRules.new(35)
road4.drive(car)
car.travel(1.4)
car.park
car.total_distance
deliver = Pizza.new('4', "large", "bannana peppers", "thin crust", "gluten free")
deliver.desc_pizza




# 5. Reflection

=begin

What concepts did you review in this challenge?

In this challenge I reviewed Ruby classes, methods, creating new instance objects, writing driver code, and refactoring.



What is still confusing to you about Ruby?

When I started this challenge I hadn't worked with class objects in a while and so I had to review before I could recall how to create the objects and get them to interact with one another.



What are you going to study to get more prepared for Phase 1?

Going into phase one I am going to review inheritance between class objects to that I can be more prepared for Phase 1.


=end