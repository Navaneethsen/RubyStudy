class BeingMethodical
  def tests
    puts 1.next
    puts 1.method("next") # get the method as an object
    puts 1.method("next").call
  end

  def reverse_sign(an_integer)
    return 0 - an_integer
  end

  def do_nothing
  end

  def add_two i
    return i+2
  end

end

obj = BeingMethodical.new
obj.tests

puts obj.reverse_sign(100)
puts obj.reverse_sign(-5)

puts obj.do_nothing.class
puts obj.add_two 67