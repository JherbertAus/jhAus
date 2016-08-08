print "How old are you? "
age = gets.chomp.to_i
print "How tall are you? "
height = gets.chomp.to_i
print "How much do you weigh? "
weight = gets.chomp.to_i

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."
total = age + height + weight

puts "That's a total of #{total}"
