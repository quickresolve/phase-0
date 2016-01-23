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