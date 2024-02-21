class Quiz
  def initialize
    @questions = {
      math: "What is the sum of 9 and 10?",
      history: "Who was the first president of the United States?"
    }

    define_question_methods
  end

  private

  def define_question_methods
    questions = @questions

    self.class.class_eval do
      questions.each do |category, question|
        define_method("question_about_#{category}") do
          puts "#{question}"
        end
      end
    end
  end
end

quiz = Quiz.new

quiz.question_about_math
quiz.question_about_history
