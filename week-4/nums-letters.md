#4.2 Numbers, Letters, and Variable Assignment


1. What does puts do?

  Puts simply writes onto the screen whatever comes after it. Puts returns nil and prints the output to the console with a new line.

2. What is an integer? What is a float?

  *Integers are numbers without decimal points.
  *Floats are numbers with decimal points.



3. What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

 The difference between float and integer division is that when dividing integers, the result will round up or down in order to output whole numbers, while when dividing floats the result will output to the nearest decimal place.


```ruby
require 'redcarpet'
markdown = Redcarpet.new(

def seconds_in_minutes(seconds)
  seconds * 60.0
  end

def minutes_in_hours(minutes)
  minutes * 60.0
  end

def hours_in_days(hours)
  hours * 24.0
  end

def hours_in_years
  24 * 365
  end

def days_in_weeks(days)
  days * 7.0
  end

def weeks_in_years(weeks)
  weeks * 52.0
  end

# Hours in a year. How many hours are in a year?
print "There are " + hours_in_years.to_s + " hours in a year."
print "\n"

# Minutes in a decade. How many minutes are in a decade?
print "There are " + (10*weeks_in_years(days_in_weeks(hours_in_days(minutes_in_hours(1))))).to_s + " minutes in a decade."
print "\n"
)

puts markdown.to_html
```

##Reflections

1. How does Ruby handle addition, subtraction, multiplication, and division of numbers?

 Ruby handles these basic mathematical operations just like a calculator. Be mindful when combinging numbers and strings using these operators, you may need to convert from one to the other so that they match.

 For example, you can’t really add a number to a string or multiply a string by another string.



2. What is the difference between integers and floats?

  Numbers without decimal points are called integers. Numbers with decimal points are usually called floating-point numbers or, more simply, floats.


3. What is the difference between integer and float division?

  The difference between float and integer division is that when dividing integers, the result will round up or down in order to output whole numbers, while when dividing floats the result will output to the nearest decimal place.


4. What are strings? Why and when would you use them?

  We refer to groups of letters in a program as strings. Strings can have punctuation, digits, symbols, and spaces in them...more than just letters. That last string doesn’t have anything in it at all; we call that an empty string.

5. What are local variables? Why and when would you use them?

  A local variable is a declaration, it has a name starting with a lower case letter or an underscore character. Local variables do not, like globals and instance variables, have the value nil before initialization. You would use them to declare values that you want to manipulate.

6. How was this challenge? Did you get a good review of some of the basics?

  This challenge was a good refresher of the material I learned prior to starting DBC.
