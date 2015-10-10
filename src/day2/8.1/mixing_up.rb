

module WarmUp
  def push_ups
    "Phew, I need a break!"
  end
end

class Gym
  include WarmUp

  def preacher_curls
    "I'm building my biceps."
  end
end

class Dojo
  include WarmUp

  def tai_kyo_kyu
    "Look at my stance!"
  end

  def push_ups
    "Ok! I am fine"
  end
end


class MixingUp
  include WarmUp
end

puts Gym.new.push_ups
puts Dojo.new.push_ups
puts MixingUp.new.push_ups
