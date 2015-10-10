class IfElseConstruct
  def tests

  end

  def check_sign(number)
    if number > 0
      puts "#{number} is positive"
    else
      puts "#{number} is negative"
    end
  end

  def check_sign_adv(number)
    if number > 0
      puts "#{number} is positive"
    elsif number == 0
      puts "#{number} is zero"
    else
      puts "#{number} is negative"
    end
  end

  def use_unless age
   @age = age
    unless @age >= 18
      puts "Sorry, you need to be at least eighteen to drive a car. Grow up fast!"
    end
  end

  def check_sign_ternary(number)
    number > 0 ? (puts "#{number} is positive") : (puts "#{number} is negative")
  end

  if #0, 1, "" are all true
    puts "Hey, 0 is considered to be a truth in Ruby"
  end

end

obj = IfElseConstruct.new
obj.check_sign -25
obj.check_sign_adv 0

obj.use_unless 15

obj.check_sign_adv 67
obj.tests