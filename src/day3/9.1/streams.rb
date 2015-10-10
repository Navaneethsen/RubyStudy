require 'stringio'
class Streams
  def tests
    p $stdin.object_id
    p STDIN.object_id
    p STDIN.__id__

    puts

    p $stdout.object_id
    p STDOUT.object_id

    puts

    p $stderr.object_id
    p STDERR.object_id

    puts

    capture = StringIO.new
    $stderr = capture

    p $stderr.object_id
    p STDERR.object_id

  end
end

obj = Streams.new
obj.tests