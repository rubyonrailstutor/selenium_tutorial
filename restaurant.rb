require 'pry'
require 'pry-debugger'

# How is a raven like a writing desk ?
# frame things in relation to 'what does it return' ?
# do regular ruby objects have an initialize method?

# What is a class ?
# How is a class like an object ?

class Restaurant_Thing

end

# What does it mean to create an instance of a class ?

# some_varaiable = SomeClass.new

restaurant = Restaurant.new
  # lowercase is the variable, CapitalClass is used to refer to the actual Class.

# What are 'attributes' in the context of a programmer defined class ?

# class defintion
class Car

  def initialize
    p "this code gets run whenever a class gets instantiated"
    x = "a string of information"
    p x
    # we want a 'color' attribute
    @color = x
  end

end

# How to read the value that an attribute points to ?
# How to update the value that an attribute points to ?
class Person
  attr_reader :gender, :age, :color
  attr_writer :gender, :age, :color
  # attr_accessor :gender, :age, :color

  def initialize
     @gender = "male"
     @age = 37
     @color = "black"
  end
end

# What is the difference between a local variable and instance variable (write it in code) ?
class Machine
    attr_accessor :type
  def initialize
    type = "screwdriver"
    @type = type
  end
end

# how to add unique, programmer determined methods to a class ?, not attr_accessor or initialize

class Computer
  attr_accessor :power, :user

  def initialize
    @power = false
  end

  def turn_on
    @power = true
  end

  def power?
    @power
  end

  def login(user, name)
    if @power == true
      @user = user
    end
    @user
  end
end

# what is the difference between Ruby native Classes and programmer defined classes ?
# how to check the methods of a class, an instance of a class ?
# How to make a class inherit the behaviors of another class ?
# How to iterate on an attribute of a class ?
# How to change the value of an attribute ?
# What does it mean to pass a method an argument, a series of arguments ?
# What is the difference between a class and instance method ?
# What is the idea of a pointer ?


# class Restaurant
#   # a class is an object, an object with predefined attributes and behaviors

#   attr_accessor :type, :address, :name, :rating
#   # attr_accessor is both read and write access

#   def initialize(type="greek", address="NYC", name= "Mohammed's", rating = nil)
#    @type = type
#    @address= address
#    @name = name
#    @rating = rating
#   end

#   def self.class_method(argument1)
#     p argument1
#   end

#   def instance_method(argumentx = "a crazy big spider")
#     p argumentx
#   end

#   def fix_name
#     self.name = self.name.split(" ").each {|e| p e.capitalize!}.join(" ")
#   end

#   # what is a ruby block ?
#   #  some_variable.each do |element|
#   #    p element
#   #  end
#   # is the same as some_variable.each {|element| p element }

#   # users keep writing in the name of restaurants like
#   # taCo beLL or chiCKEN PLACE, but we want Taco Bello, Chicken Place
#   # create an instance method that the names

# end

# class RankingMachine
#   attr_accessor :restaurants

#   def initialize
#     @restaurants = []
#   end

#   def show_best_restaurant
#     best_restaurant = @restaurants.first

#     @restaurants.each do |restaurant|
#       if restaurant.rating > best_restaurant.rating
#         best_restaurant = restaurant
#       end
#     end

#     best_restaurant
#   end
# end

# @mohammeds_restaurant = Restaurant.new("chinese", "NYC", "Mohammed's Place", 2)
# @johns_restaurant = Restaurant.new("chinese", "SF", "John's Place", 5)
# @ranking_machine = RankingMachine.new
# instantiate
# @ranking_machine.restaurants.push @m
# to be continued ...

# unable to load irb session by command load 'restaurant.rb'
# 2.1.0 :001 > load "restaurant.rb"
# /home/mohammed/.rvm/gems/ruby-2.1.0/gems/pry-0.9.12.6/lib/pry/pry_class.rb:258: warning: Insecure world writable dir /home/mohammed in PATH, mode 040777
# NoMethodError: undefined method `push' for #<RankingMachine:0x00000001d70298 @restaurants=[]>
# from restaurant.rb:64:in `<top (required)>'
# from (irb):1:in `load'
# from (irb):1
# from /home/mohammed/.rvm/rubies/ruby-2.1.0/bin/irb:11:in `<main>'

# how does behavior pass from one object to another
# explain how proceduralization is required to automate problem solving and object oriented programming is a tool to scale code and create efficiency
# .push adds things to an array....

# write an instance method that returns all the restaurants in alphabetical order


# key concepts
# instantiate an object
# pass the object arguments on instantiation
# created methods that give objects behaviors
# have awareness of the difference between class and instance methods
# default value for arguments
# what does it mean to iterate ?