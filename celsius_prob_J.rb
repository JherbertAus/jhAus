require "date"
require "./progressbar.rb"
require "Paint"
require "Terminal-Table"

Date::ABBR_DAYNAMES #will provide us abbreviated Day Names.
dayNames = Date::ABBR_DAYNAMES

class Celsius
 def initialize(temperature)
   @temperature = temperature
 end

 def temperature
   @temperature
 end

 def to_f
   @temperature * 1.5 + 30
 end

end

class Day
 def initialize(name, temperature)
   @name = name
   @temperature = temperature
 end

 def name
   @name
 end



 def temperature (format = "")
   # If the string "fahrenheit" is passed in as an argument then call the to_f
   # method on the @temperature class, otherwise default to Celsius.
   format == "fahrenheit" ? @temperature.to_f : @temperature.temperature

 end

 # The self.all method returns all objects created from the Day class.
 def self.all
   ObjectSpace.each_object(self).to_a
 end
end
progressbar = ProgressBar.new(0, dayNames.length)
table = Terminal::Table.new
# For each Day ask the user for the temperature and Instantiate a Day with a
# Celsuis object as the temperature attribute.
dayNames.each do |day|
  progressbar.output
  puts table
 puts "Hi, what was the temperature on #{day}"
 var = Day.new(day, Celsius.new(gets.chomp.to_i))
 progressbar.increment
 var.temperature > 29 ? colour = :red : colour = :blue
 table << [var.name, Paint[var.temperature, colour], Paint[var.temperature("fahrenheit"), colour]]

end
progressbar.output
puts table

 # Output the data in an ugly table
