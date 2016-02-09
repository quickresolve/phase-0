# Virus Predictor

# I worked on this challenge with: Zach Barton.
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# This program requires data from an external ruby file. The require_relative statement checks for the external file in the same directory.

# The key differences between require_relative and require is that the require_relative statement is more efficient for loading external files.

# Require can also be used to load ruby libraries rather than just ruby files.

require_relative 'state_data'

class VirusPredictor

# The initialize method is instantianting each instance variable for the class
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end

# This calls two private methods to use our instance variables to return virus effects
  def virus_effects
    number_of_deaths = predicted_deaths
    speed = speed_of_spread
    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

  private

# Using our instance variables, determine predicted death count based on pop. density
  def predicted_deaths

    # predicted deaths is solely based on population density

    death_rate = (@population_density / 500).round(1)
    death_rate = 0.4 if @population_density >= 250
    death_rate = 0.1 if @population_density < 50

    (@population * death_rate).floor

  end

# Using our instance variables, determine speed of spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    2.5
    2 if @population_density >= 50
    1.5 if @population_density >= 100
    1 if @population_density >= 150
    0.5 if @population_density >= 200

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects



STATE_DATA.each do |state,data|

  state = VirusPredictor.new(state)

  state.virus_effects

end

#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

The differences between the two different hash syntaxes shown in the state_data file are that the outer hash uses a hashrocket between the string key and it's value, while the inner hash uses a symbol with colon as the key coupled with it's value pair.

Using the symbol in the inner hash allows for efficiency and takes up less memory because the computer creates only one object id for the symbol no matter how many times it is used.


What does require_relative do? How is it different from require?

The require_relative statement checks for the external file in the same directory. The key differences between require_relative and require is that the require_relative statement is more efficient for loading external files. Require can also be used to load ruby libraries rather than just ruby files.



What are some ways to iterate through a hash?

You can iterate through a hash using the #each enumerable, or #each_key, #each_value, etc.

When refactoring virus_effects, what stood out to you about the variables, if anything?

What stood out to us was that the arguments weren't necessary when calling the methods.


What concept did you most solidify in this challenge?

The concept I most solidified was what to keep in mind when refacotring. When simplifying your code you want to make sure it is dry, readable, and that you are removing extra lines to improve speed and efficiency in that order.

=end