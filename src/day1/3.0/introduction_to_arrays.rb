class IntroductionToArrays
  def tests
    [1, 2, 3, 4, 5].map { |i| (puts i.to_s + '!') }
    [10, 20, 30, 40, 50].collect { |i| (puts i.to_s + '!') } #alias to map
    a = [1,3,5,4,6,7].delete(5)
    puts a.inspect

    a = [1,2,3,4,5,6,7,8,9].delete_if{ |i| i % 2 == 0 }
    puts a.inspect
  end
end

obj = IntroductionToArrays.new
obj.tests