class Candidate

  def initialize years_of_experience, github_points, languages_worked_with, applied_recently, age
    @years_of_experience = years_of_experience
    @github_points = github_points
    @languages_worked_with = languages_worked_with
    @applied_recently = applied_recently
    @age = age
  end

  def languages_worked_with
    return @languages_worked_with
  end

  def years_of_experience
    return @years_of_experience
  end

  def github_points
    return @github_points
  end

  def languages_worked_with
    return @languages_worked_with
  end

  def applied_recently
    return @applied_recently
  end

  def age
    return @age
  end

end

class Interviewer
  def is_an_experienced_programmer candidate, criteria
    if (candidate.is_a? Candidate)
      criteria.language.each do |lang|
        if (candidate.languages_worked_with.include?(lang))
          break
        else
          puts "No Experience in #{criteria.language.to_s}"
          return
        end
      end
      if (candidate.years_of_experience >= criteria.exp)
        if (candidate.github_points >= criteria.ghPoints)
          if (candidate.age <= criteria.age)
            if (candidate.applied_recently)
              return false
            else
              return true
            end
          else
            puts "Number of Age is More"
          end
        else
          puts "Number of GitHub Points is less"
        end
      else
        puts "Number of years Experience is less"
      end
    end
  end
end

class Criteria
  def initialize language, exp, ghPoints, age, applied_recently
    @language = language
    @exp = exp
    @ghPoints = ghPoints
    @age = age
    @applied_recently = applied_recently
  end

  def language
    return @language
  end

  def exp
    return @exp
  end

  def ghPoints
    return @ghPoints
  end

  def age
    return @age
  end

  def applied_recently
    return @applied_recently
  end
end

# is_an_experienced_ruby_programmer =
#     (candidate.languages_worked_with.include? 'Ruby') &&
#         (candidate.years_of_experience >= 2 || candidate.github_points >= 500) &&
#         ! (candidate.age < 15 || candidate.applied_recently?)


my_criteria = Criteria.new ["Ruby"], 3, 500, 15, false
my_candidate = Candidate.new 5, 700, ["Ruby", "Java", "PHP"], false, 12

p my_candidate
p my_criteria

puts Interviewer.new.is_an_experienced_programmer my_candidate, my_criteria

