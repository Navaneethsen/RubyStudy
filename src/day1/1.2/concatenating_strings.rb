class ConcatenatingStrings
  def tests
    puts 'Ruby' + 'Monk'
    puts 'Ruby'.concat('Monk')
    puts 'Ruby' << 'Monk'
  end
end

obj = ConcatenatingStrings.new
obj.tests