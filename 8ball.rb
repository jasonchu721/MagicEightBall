require "pry"
require "colorize"

class MaficEightBall
  def initialize 
    @answers_first = [
      "Yes",
      "No",
      "Nope",
      "Maybe",
      "Yes, for sure!",
      "Most likely",
      "Ask later",
      "Cannot predict now"
    ]

    @answers_second = answers_first.clone

    ask question
  end

  def ask_question
    puts "Ask me a question, any question! (Type quit to exit)"
    question = gets.strip
    case question 
    when "add_answer"
      add_answer
      ask_question
    when "print_answers"
      view_answers
      ask_question
    when "quit"
      puts "Bye Felicia!!!"
    when "reset_answers"
      reset_answers
    else
      puts @answer_second.sample
      sleep(1)
      ask_question
    end
  end

def reset_answers
  @answers_second = @answers_first.clone
  puts "The answers have been reset"
  ask_question
end

def view_answers
  @answers.each do |answer|
    puts "#{answer}"
  end

def add_answers
  puts "What answer would you like to add to the Magic 8 ball?"
  @new_answer =gets.strip.downcase
  @lowercase_answers = @answers_second.map(&:downcase)
  if @lowercase_answers.include? new_answer
    puts "Sorry, that answer already exsists"
  else
    @answers << new_answer
    print "'#{new_answer}'".red.on_cyan
    puts " has been added to your answer choices."
  end
end



ball = MagicEightBall.new

