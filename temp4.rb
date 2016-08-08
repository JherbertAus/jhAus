class Celsius
	def initialize (temperature)
		@temperature = temperature
	end
	
	def formula 
		result = @temperature *1.8 + 32
		result.round.to_s + " degree Celsius"
	end
	
end 
	days = ["Mon", "Tues", "Wed"]
	days.each do |eachday|
		puts "what is the Fahrenheit tempurature for #{eachday} "
		temp = gets.chomp.to_i
		day = Celsius.new(temp)
		puts day.formula
	end
	
	
	