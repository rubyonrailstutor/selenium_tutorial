class Restaurant
  # attr_reader :type_of_food, :address, :name
  # attr_writer :type_of_food, :address, :name
  # 


  attr_accessor :type_of_food, :address, :name  
  # Atttributes & Methods
  # locate a restaurant - Method
  # contact information - Attribute
  # rating - Attribute
  # type of food - Attribute
  # website - Attribute
  # make order - Method
  # 'find the' - query/search - Method

  def initialize
   @type_of_food = "greek"
   @address= "NYC"
   @name = "restaurantName"
  end

end