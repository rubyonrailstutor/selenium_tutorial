require 'pry'
require 'pry-debugger'

class Restaurant
  # a class is an object, an object with predefined attributes and behaviors

  attr_accessor :type, :address, :name, :rating
  # attr_accessor is both read and write access

  def initialize(type="greek", address="NYC", name= "Mohammed's", rating = nil)
   @type = type
   @address= address
   @name = name
   @rating = rating
  end

  def self.class_method(argument1)
    p argument1
  end

  def instance_method(argumentx = "a crazy big spider")
    p argumentx
  end

  def fix_name
    self.name = self.name.split(" ").each {|e| p e.capitalize!}.join(" ")
  end

  # what is a ruby block ?
  #  some_variable.each do |element|
  #    p element
  #  end
  # is the same as some_variable.each {|element| p element }

  # users keep writing in the name of restaurants like
  # taCo beLL or chiCKEN PLACE, but we want Taco Bello, Chicken Place
  # create an instance method that the names
end

class RankingMachine
  attr_accessor :restaurants

  def initialize
    @restaurants = []
  end

  def show_best_restaurant
    best_restaurant = @restaurants.first

    @restaurants.each do |restaurant|
      if restaurant.rating > best_restaurant.rating
        best_restaurant = restaurant
      end
    end

    best_restaurant
  end

end

@m = Restaurant.new("chinese", "NYC", "Mohammed's Place", 2)
@j = Restaurant.new("chinese", "SF", "John's Place", 5)
@rm = RankingMachine.new
@rm.push @m

# .push adds things to an array....

# write an instance method that returns all the restaurants in alphabetical order


# key concepts
# instantiate an object
# pass the object arguments on instantiation
# created methods that give objects behaviors
# have awareness of the difference between class and instance methods
# default value for arguments
# what does it mean to iterate ?