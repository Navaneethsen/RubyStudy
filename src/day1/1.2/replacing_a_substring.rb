class ReplacingASubstring
  def tests
    puts "I should look into your problem when I get time".sub('I','We')
    puts "I should look into your problem when I get time".gsub('I','We')
    puts 'RubyMonk'.gsub(/[m-zM-Z]/,'1').gsub(/[a-mA-M]/, '0')
  end
end

obj = ReplacingASubstring.new
obj.tests