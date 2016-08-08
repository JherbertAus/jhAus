class Celsius
	def initialize (temperature)
		@temperature = temperature
	end
	
	def formula 
		@temperature *1.8 + 32
	end
	
end 
	days = ["Mon", "Tues", "Wed"]
	days.each do |eachday|
		puts "what is the Fahrenheit tempurature for #{eachday} "
		temp = gets.chomp.to_i
		day = Celsius.new(temp)
		result = day.formula.round
		puts "That's #{result} degress Celius!"
	end
	
	
	