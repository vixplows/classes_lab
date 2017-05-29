require('minitest/autorun')
require("minitest/rg")
require_relative('../students')

class TestStudents < MiniTest::Test

  def setup
  @code_clan_student_1 = CodeClanStudent.new("Victoria", 13)
  @code_clan_student_2 = CodeClanStudent.new("Arthur", 10)
  @code_clan_student_3 = CodeClanStudent.new("Maisie", 5)
  end

  def test_student_name
    assert_equal("Victoria", @code_clan_student_1.student_name)
  end

  def test_cohort_number
    assert_equal(13, @code_clan_student_1.cohort_number)
  end

  def test_set_student_name
    @code_clan_student_1.student_name=("Vic")
    assert_equal("Vic", @code_clan_student_1.student_name)
  end

  def test_set_cohort_number
    @code_clan_student_2.cohort_number=(6)
    assert_equal(6, @code_clan_student_2.cohort_number)
  end

  def test_get_student_to_talk
    assert_equal("I can talk", @code_clan_student_2.student_talk("I can talk"))
  end

  def test_say_favourite_language
    assert_equal("I love Python", @code_clan_student_3.favourite_language("Python"))
  end

end