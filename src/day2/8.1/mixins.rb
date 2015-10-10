module Perimeter
  def perimeter
    if self.class == Square
      sides.inject(){|sum, side| sum + side} * 4
    elsif self.class == Rectangle
      sides.inject(){|sum, side| sum + side} * 2
    end
  end
end

class Rectangle
  include Perimeter
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides_raw
    [@length, @breadth, @length, @breadth]
    end

  def sides
    [@length, @breadth]
  end
end

class Square
  include Perimeter
  def initialize(side)
    @side = side
  end

  def sides_raw
    [@side, @side, @side, @side]
    end

  def sides
    [@side]
  end
end

puts Square.new(26).perimeter
puts Rectangle.new(13, 13).perimeter