class Program5

  def palindrome?(sentence)
    a = sentence.downcase.gsub(/\s+/, "")
    b = a.reverse
    return a === b
  end
end


puts Program5.new.palindrome?("This is a man")
puts Program5.new.palindrome?("Never odd or even")