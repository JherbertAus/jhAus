class Person
  def initialize (age, gender, name,)

    @name = name
    @gender = gender
    @age = age

  end

  def name
  @name
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

end

class superhero < Person

def initialize (age, gender, name, superpower)

 super(age, gender, name)
 @superpower = superpower
#
 end
#
#
 def superpower
   @superpower
end

end

trent = Person.new("26", "male", "Trent")
nandini = superhero.new(20, "Female", "Nandini", "coding")

puts trent.name
puts nandini.name
#
#
# #person.all.each.|test|
