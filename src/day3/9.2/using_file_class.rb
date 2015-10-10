class UsingFileClass

  def printFile fileName
    File.open(fileName, "r") do |f|
      f.each_line do |line|
        puts line
      end
    end
  end

  def writeTofile fileName, msg
    File.open(fileName, "a") do |f|
        f << msg
      end
  end

  def tests

    printFile "jango.txt"

    writeTofile "rango.txt", "HelloDude \n"
    writeTofile "rango.txt", "Whats Up \n"
    writeTofile "rango.txt", "<Man !!> \n"

    printFile 'rango.txt'
  end

end

obj = UsingFileClass.new
obj.tests

file = File.open("master", "r+")

p file.read

file.rewind # try commenting out this line to see what happens! can you guess why this happens?
buffer = ""
p file.read(23, buffer)

p buffer
file.close

puts

p File.read("master")
File.open("master") do |f|
  f.seek(20, IO::SEEK_SET)
  p f.read(10)
end

puts

lines = File.readlines("master")
p lines
p lines[0]

