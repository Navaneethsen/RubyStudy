class LoopsInRuby
  def infiniteLoopTest
    loop do
      puts "this line will be executed for an infinite amount of time"
    end
  end
  def numberedLoopTest
    5.times do
      puts "this line will be executed for an 5 number of times"
    end
  end
end

obj = LoopsInRuby.new
obj.numberedLoopTest