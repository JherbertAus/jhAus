# Sample part 1 - variables create names for data 

class Character
  attr_reader :first_name, :last_name
  def initialize (name)
    @first_name, @last_name = name.split(/ /)
  end
end

names = [ "John Robinson", "Maureen Robinson", "Zachary Smith",
  "Judy Robinson", "Will Robinson", "Penny Robinson", "Don West"
]

names.each do |name|
  Character.new(name)   # Lost in Space?
end

# Sample part 2 to include name

ObjectSpace.each_object(Character) do |obj|
  if obj.last_name == "Robinson"
    puts "#{obj.first_name} #{obj.last_name}"
  end

# Sample part 2 to exclude name

#   ObjectSpace.each_object(Character) do |obj|
#   if obj.last_name == "Robinson"
#     puts "#{obj.first_name} #{obj.last_name}"
#   end
end

