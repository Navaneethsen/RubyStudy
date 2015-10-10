class SearchInAString

  def initialize
    @str = '[Luke:] I cant believe it. [Yoda:] That is why you fail.'
    puts @str
  end

  def contains(myStr)
    (@str.include?myStr)?(puts 'YES'):(puts 'NO')
  end

  def tests
    puts 'Ruby is a beautiful language'.start_with?('Ruby')
    puts "I can't work with any other language but Ruby".end_with?'Ruby'
    puts "I am a Rubyist".index('R')
  end

end

obj = SearchInAString.new
obj.contains('Yoda')

obj.tests
