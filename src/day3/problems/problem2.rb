class Problem2
  def find_frequency(sentence, my_word)
    words = sentence.split(" ")
    # puts words
    count = 0
    words.each do |word|
      if word.downcase == my_word.downcase
        count = count + 1
      end
    end
    return count
  end

  def find_frequency_2(sentence, word)
    sentence.downcase.split.count(word.downcase)
  end

  def sort_string(string)
    string.split.sort{|word1, word2| word1.length <=> word2.length}.join(' ')
  end

  def random_select(array, n)
    arr = []
    n.times do |num|
      arr << rand(max = (array.length))
    end
    puts arr.map{|index| array[index]}.to_s
  end


  def random_select_2(array, n)
    result = []
    n.times do
      result << array[rand(array.length)]
    end
    result
  end
end

obj = Problem2.new

input = "This is not very good one as this sentence could not start with a because because because is a conjunction"
# puts obj.find_frequency(input, "a")
#
# puts obj.sort_string 'Awesome I am'

puts obj.random_select([14,24,34,45,56,72,93,84], 6)