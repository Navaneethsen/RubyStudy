class BuildingClasses
  def tests

  end
end

class Rectangle

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end
end

obj = BuildingClasses.new
obj.tests

rect = Rectangle.new 12,14
puts rect.perimeter