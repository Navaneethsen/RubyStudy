class HashIteration

  def initialize
    @student_ages = {
        "Jack" => 10,
        "Jill" => 12,
        "Bob" => 14
    }
    @restaurant_menu = {"Ramen" => 3, "Dal Makhani" => 4, "Tea" => 2}
  end

  def tests
    @restaurant_menu.each do |item, price|
      puts "#{item} price is Rs #{price}"
    end

    @restaurant_menu.each do |item, price|
      puts "#{item} price is Rs #{(price + (0.10 * price))}"
    end

    puts @restaurant_menu.keys
    puts @restaurant_menu.values

    normal = Hash.new
    was_not_there = normal[:zig]
    puts "Wasn't there:"
    p was_not_there

    usually_brown = Hash.new("brown")
    pretending_to_be_there = usually_brown[:zig]
    puts "Pretending to be there:"
    p pretending_to_be_there

    chuck_norris = Hash[:punch, 99, :kick, 98, :stops_bullets_with_hands, true]
    p chuck_norris

  end

  def artax
    a = [:punch, 0]
    b = [:kick, 72]
    c = [:stops_bullets_with_hands, false]
    key_value_pairs = [a, b, c]

        Hash[key_value_pairs]
  end


end

obj = HashIteration.new
obj.tests

p obj.artax


