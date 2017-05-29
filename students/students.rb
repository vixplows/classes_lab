class CodeClanStudent
  attr_accessor :student_name, :cohort_number

  def initialize(student_name, cohort_number)

    @student_name = student_name
    @cohort_number = cohort_number
  end

  def student_talk(sentence)
    return sentence
  end

  def favourite_language(language)
    return "I love #{language}"
  end

end