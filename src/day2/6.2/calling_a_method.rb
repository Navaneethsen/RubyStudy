class CallingAMethod
  def tests
  end

  def add_2(a_number, another_number)
    a_number + another_number
  end

  def add_3(a_number, another_number, another_another_number)
    a_number + another_number + another_another_number
  end

  def add_3_initialized(a_number, another_number, another_another_number = 0)
    a_number + another_number + another_another_number
  end

  def add_inject(*numbers)
    numbers.inject(0) { |sum, number| sum + number }
  end

  def add_reduce(*numbers)
    numbers.reduce(:+)
  end

  def add_test(a_number, another_number, yet_another_number)
    a_number + another_number + yet_another_number
  end

  def add_with_message(message, *numbers)
    "#{message} : #{add_inject(*numbers)}"
  end

  def introduction(age, gender,*names)
    "Meet #{concat_names(*names)}, who's #{age} and #{gender}"
  end

  def concat_names(*names)
    names.inject(){|name, value| name + "#{ " " + value}"}
  end


  def add_type_1(a_number, another_number, options = {})
    sum = a_number + another_number
    sum = sum.abs if options[:absolute]
    sum = sum.round(options[:precision]) if options[:round]
    sum
  end

  def add_type_2(a_number, another_number, options = {})
    sum = a_number + another_number

    if options[:absolute]
      sum = sum.abs
    end

    if options[:round]
      sum = sum.round(options[:precision])
    end

    return sum
  end


  def subtract_inject(*numbers)
    current_result = numbers.shift
    numbers.inject(current_result) { |current_result, number| current_result - number }
  end

  def calculate(*arguments)
    options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
    options[:add] = true if options.empty?
    return add_inject(*arguments) if options[:add]
    return subtract_inject(*arguments) if options[:subtract]
  end

end

obj = CallingAMethod.new
puts '------------------------------'
puts obj.add_2 23, 24
puts obj.add_3 23, 24, 25
puts obj.add_3_initialized 23, 24
puts '------------------------------'
puts obj.add_inject(1)
puts obj.add_inject(1, 2)
puts obj.add_inject(1, 2, 3)
puts obj.add_inject(1, 2, 3, 4)
puts '------------------------------'
puts obj.add_reduce(1)
puts obj.add_reduce(1, 2)
puts obj.add_reduce(1, 2, 3)
puts obj.add_reduce(1, 2, 3, 4)
puts '------------------------------'
puts (5..10).inject {|sum, n| sum + n }
puts '------------------------------'
numbers_to_add = [1, 2, 3]
puts obj.add_test(*numbers_to_add) #splat
puts '------------------------------'
puts obj.add_with_message("The Sum is", 1, 2, 3)
puts '------------------------------'
names = ['Navaneeth', 'Sen', 'Babusenan']
puts obj.introduction(28, "Male", *names)

puts '------------------------------'
puts obj.add_type_1(1.0134, -5.568)
puts obj.add_type_1(1.0134, -5.568, absolute: true)
puts obj.add_type_1(1.0134, -5.568, absolute: true, round: true, precision: 2)

puts '------------------------------'
puts obj.add_type_2(1.0134, -5.568)
puts obj.add_type_2(1.0134, -5.568, absolute: true)
puts obj.add_type_2(1.0134, -5.568, absolute: true, round: true, precision: 2)

puts '------------------------------'
puts (5..10).inject {|sum, n| sum - n }
puts obj.subtract_inject(*5..10)