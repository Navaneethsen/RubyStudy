class Blocks
  def tests
  end

  def demonstrate_block(number)
    yield(number)
  end

  def calculate(num1, num2)
    yield(num1, num2)
  end

  def calculate_test method, *val
    method.call *val
  end

end

obj = Blocks.new

#puts obj.demonstrate_block(1) { |number| number + 1 }

#puts obj.calculate(1, 2) { |num1, num2| num1  * num2 }

l1 = lambda {|num1, num2| num1 * num2}
l2 = lambda {|num1, num2| num1 + num2}

def multiply *num
  num.inject(){|product, num| product * num}
end

def add *num
  num.inject(){|sum, num| sum + num}
end

puts obj.calculate_test method(:multiply), *[1,2,3,4,5,6]
