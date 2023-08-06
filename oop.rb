# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    attr_reader :name, :say
    def initialize (name, color = "Silver", say)
        @name = name
        @color = color
        @say = say
    end
    def say
     @say.insert(0, "*~*") && @say.insert(-1, "*~*")
end
end

unicorn1 = Unicorn.new("Jeff", "Howdy")
p unicorn1
puts unicorn1.say



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    attr_reader :name, :pet, :thirsty
    def initialize (name, pet = "bat", thirsty = true)
        @name = name
        @pet = pet
        @thirsty = thirsty
    end
    def drink
        @thirsty = false
    end
end
vamp1 = Vampire.new("Nandor")
p vamp1
puts vamp1.drink
#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    attr_reader :name, :rider, :color, :hunger
    def initialize (name, rider, color, hunger = true)
        @name = name
        @rider = rider
        @color = color
        @hunger = hunger
    end
    def eat(num)
        if num >= 4 
            puts @hunger = false
        else puts @hunger = true
        end
    end
end
    drag1 = Dragon.new("Trogdor", "Batman", "Black")
p drag1
puts drag1.eat(3)
puts drag1.eat(4)

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring
    def initialize (name, disposition, age = 0, is_adult = false, is_old = false, has_ring)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = is_adult
    if @age >= 33 && @age <= 100
         @is_adult = true
    
    end
    @is_old = is_old
    if age >= 101 
         @is_old = true
    @has_ring = has_ring
    if @name == "Frodo"
        @has_ring = true
    end 
    def celebrate_birthday
        @age += 1
    end
end
end
end
hobbit1 = Hobbit.new("Frodo", "Breakfast", 155, false)
puts hobbit1.celebrate_birthday
    