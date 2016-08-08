lass Day
  def initialize(name, temp)
    @temp = temp
    @name = name
  end
  def temp
    @temp
  end
  def convert_f
    (@temp.to_f * 1.8 + 32).round(0)
  end
  def name
    @name
  end
end
week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
puts "Enter the temp in C"
array = []
week.each do |current_day|
  puts "#{current_day}"
  current_day2 = Day.new(current_day, gets.chomp)
  array << current_day2
end
puts ("\n" * 5) + ("-" * 30)
array.each do |current|
  puts "#{current.name}"+ (" " * (9 - current.name.length).to_i) + "| #{current.temp} deg C | #{current.convert_f} deg F"
end
puts "-" * 30