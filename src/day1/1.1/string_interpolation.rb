class StringInterpolation

  @@c = 'hello'

  def initialize a, b
    @a = a
    @b = b

    puts "The number #{@a} is less than #{@b}"
    @@c = @@c + "12345"
    puts @@c
  end

  def string_length_interpolater(incoming_string)
    puts "The string you just gave me has a length of #{incoming_string.length}"
  end

end


sens_stringy_thingy_1 = StringInterpolation.new 1, 2
sens_stringy_thingy_2 = StringInterpolation.new 3, 4
