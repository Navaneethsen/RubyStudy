class ConstantLookup
end

# module Dojo
#   A = 4
#   module Kata
#     B = 8
#     module Roulette
#       class ScopeIn
#         def push
#           15
#         end
#       end
#     end
#   end
# end

module RubyMonk
  module Parser
    class TextParser
      def self.parse(string) # class method
        (string.upcase).chars.to_a
      end
    end
  end
end

module Dojo
  A = 4
  module Kata
    B = 8
    module Roulette
      class ScopeIn
        def push
          A
        end
      end
    end
  end
end

A = 16
B = 23
C = 42

puts "A - #{A}"
puts "Dojo::A - #{Dojo::A}"

puts

puts "B - #{B}"
puts "Dojo::Kata::B - #{Dojo::Kata::B}"

puts

puts "C - #{C}"
puts "Dojo::Kata::Roulette::ScopeIn.new.push - #{Dojo::Kata::Roulette::ScopeIn.new.push}"

#:: - The constant lookup character

puts RubyMonk::Parser::TextParser.parse("Navaneeth")

puts "A - #{A}"

Dojo::Kata::Roulette::ScopeIn::A = 1098
puts "Dojo::Kata::Roulette::ScopeIn.A - #{Dojo::Kata::Roulette::ScopeIn.new.push}"