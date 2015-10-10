class Problem6
  def sum_of_cubes(a, b)
    sum = 0
    (a..b).each do |num|
      sum = sum + num*num*num
    end
    sum
    # (a..b).inject{|sum, num| sum + num*num*num}
    # (a..b).inject{|sum, num| puts num}
  end

  def non_duplicated_values(values)
    values.find_all { |x| values.count(x) == 1 }
  end
end

puts Problem6.new.sum_of_cubes(3, 5)