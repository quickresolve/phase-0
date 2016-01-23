puts 1+2

puts 1.00 + 2.00
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0

puts 1+2
puts 2*3
puts 5-8
puts 9/2


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

