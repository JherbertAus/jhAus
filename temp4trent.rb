class Day

  def initialize(name, temperature, order)
    @name = name
    @temperature = temperature
    @order
  end

  def temp
    @temperature
  end

  def order
    @order
  end

  def name
    @name
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

class Celsius

  def initialize(temp)
    @temperature = temp
  end

  def temperature
    @temperature
  end
  def convert
    @temperature * 1.8 + 32
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

end

daily_temps = {}
days = [:Monday, "Tuesday", "Wednesday", :Thursday, "Friday"]

days.reverse!.each_with_index do |day, i|
  puts "Hi, what the temperature outside on #{day}?"
  Day.new(day, Celsius.new(gets.chomp.to_i), i)
end

all_days = Day.all

all_days.map do |x|
  puts "#{x.name} | #{x.temp.temperature} degrees c | #{x.temp.convert} degrees f"
end
