class CodeClanStudent

  attr_accessor :student_name, :cohort_number

  def initialize(student_name, cohort_number) 

    @student_name = student_name
    @cohort_number = cohort_number
  end

  def get_student_name
    return @student_name
  end

  def get_student_cohort
    return @cohort_number
  end

  def change_student_name(updated_name)
    @student_name = updated_name 
  end 

  def student_to_talk
    return "I can talk"
  end
  def say_favourite_language(fav_language)
    return "I love #{fav_language}"
  end

end

class TestGalaxyUnited < Minitest::Test

  def initialize(team_name, players, coach)

    @team_name = team_name
    @players = players
    @coach = coach 

  end

  

end
