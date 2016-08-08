print "Give me a number, Any number: "
number = gets.chomp.to_i

bigger = number * 100 
puts "That's not a number. Now #{bigger} is a number." 

print " Give me another number: " 
another = gets.chomp
number = another.to_f

smaller = number / 100
puts "Whoa! that's a big number. A smaller number is #{smaller}."



