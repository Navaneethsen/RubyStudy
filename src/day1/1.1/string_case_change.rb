class StringCaseChange

  def tests
    puts 'i am in lowercase'.upcase
    puts 'This is Mixed CASE'.downcase
    puts "ThiS iS A vErY ComPlEx SenTeNcE".swapcase
  end
end

obj = StringCaseChange.new
obj.tests