class Lambdas
  def tests
    l1 = lambda { "Do or do not" }
    puts l1.call

    l2 = lambda do |string|
      if string == "try"
        return "There's no such thing"
      else
        return "Do or do not."
      end
    end

    puts l2.call("Navaneeth Sen")
    puts l2.call("try")
  end

end

obj = Lambdas.new
obj.tests