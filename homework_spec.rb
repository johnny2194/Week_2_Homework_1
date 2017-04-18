require 'minitest/autorun'
require_relative './homework.rb' 
require 'minitest/rg'

class TestCodeClanStudent < Minitest::Test

  def setup 
    
    @student_1 = CodeClanStudent.new("Johnny", 12)
    @student_2 = CodeClanStudent.new("David", 11)
  end

    def test_get_student_name
      assert_equal("Johnny", @student_1.get_student_name)
    end

    def test_get_student_name_David
      
      assert_equal("David", @student_2.get_student_name)
    end

    def test_get_student_cohort
      assert_equal(12, @student_1.get_student_cohort)
    end

    def test_get_student_cohort_David
      assert_equal(11, @student_2.get_student_cohort)
    end

    def test_change_student_name
      @student_1.student_name = "Charlie"
      assert_equal("Charlie", @student_1.student_name)
    end

    def test_change_cohort_number
      @student_1.cohort_number = 11
      assert_equal(11, @student_1.cohort_number)
    end

    def test_student_to_talk
      assert(@student_1.student_to_talk.is_a?(String))
    end

    def test_student_to_talk
      assert_equal("I can talk", @student_1.student_to_talk)
    end

    def test_favourite_programming_language_is_ruby
      language = "Ruby"
      assert_equal("I love Ruby", @student_1.say_favourite_language(language))
    end

end

class TestGalaxyUnited < Minitest::Test

  def setup
    @first_squad = GalaxyUnited.new("First Squad", [P1,P2,P3,P4,P5], "David Stewart")
  end

#   def test_get_team_name
#     assert.equal("First Squad", @team_name.get_team_name)
#   end
end

# Part B

# Now we would like you to make a class that represents a sports team.

# Make a class to represent a Team that has the properties Team name (String), Players (Array of strings) and a Coach (String).
# For each property in the class make a Getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the player's array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.








# Part A

# For this part we want you to make a class that represents a CodeClan student. 

# Create a Class called Student that takes in a name (String) and a cohort (integer) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").