class Classes
  def tests
    puts 1.class
    puts "".class
    puts [].class
    puts .class

    @student_ages = {
        "Jack" => 10,
        "Jill" => 12,
        "Bob" => 14
    }
    puts @student_ages.class
    puts Hash.class

    puts 1.is_a?(Integer)
    puts 1.is_a?(String)

    puts 1.class.class

  end
end

obj = Classes.new
obj.tests