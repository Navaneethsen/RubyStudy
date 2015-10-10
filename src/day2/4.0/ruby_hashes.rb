class RubyHashes

  def initialize
    @student_ages = {
        "Jack" => 10,
        "Jill" => 12,
        "Bob" => 14
    }
    @restaurant_menu = {"Ramen" => 3, "Dal Makhani" => 4, "Tea" => 2}
  end

  def tests
    puts @restaurant_menu["Ramen"]
    puts @student_ages["Jill"]
  end
end

obj = RubyHashes.new
obj.tests
