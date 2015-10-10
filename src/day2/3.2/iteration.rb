class Iteration
  def tests
    array = [1, 2, 3, 4, 5]
    for i in array
      puts i
    end
  end

  def array_copy_for(source, num)
    destination = []
    for i in source
      if (i < num)
        destination << i
      end
    end
    return destination
  end

  def array_copy_do(source, num)
    destination = []
    source.each do |i|
      if (i < num)
        destination << i
      end
    end
    return destination
  end
end

obj = Iteration.new
obj.tests
a = [1, 2, 3, 4, 5]
b = obj.array_copy_for(a, 3)
puts b.inspect

b = obj.array_copy_do(a, 4)
puts b.inspect