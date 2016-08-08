def add(a,b)
  (a+b)
end

def subtract(a,b)
  (a-b)
end

def multiply(a,b)
  (a*b)
end

def divide(a,b)
  (a/b)
end

def output (result)
    puts "The result is: (#{result})"
end

loop do

  puts "Welcome to RubyCalc"
  print "Enter first number: "
  firstnumber = gets.chomp.to_i
  print "Enter operation (+, -, *, /): "
  operator = gets.chomp
  print "Enter second number: "
  secondnumber = gets.chomp.to_i

  if operator == "+"
    output(add(firstnumber, secondnumber))

  elsif operator == "-"
      output(subtract(firstnumber, secondnumber))

  elsif operator == "/"
      output(divide(firstnumber, secondnumber))

  elsif operator == "*"
      output(multiply(firstnumber, secondnumber))

  end

end
