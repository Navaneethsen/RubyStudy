class Problem1

  def length_finder(input_array)
    return_arr = Array.new
    input_array.each do |string|
      return_arr.push(string.to_s.length)
    end
    return return_arr
  end
end

obj = Problem1.new

input = ['Ruby','Rails','C42']
puts obj.length_finder(input)