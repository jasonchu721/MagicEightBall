require "pry"
require "colorize"

class MagicEightBall
  def initialize
  @answers_original = [
    "Yes",
    "No",
    "Maybe",
    "Yeah for sure",
    "Def not",
    "Answer is hazy",
    "Most likely",
    "Outlook good",
    "Merp"
  ]
  @answers = @answers_original.clone
  ask_question
  end

  def ask_question
  puts "Please ask the magic 8 ball a question, any question!".cyan 
  puts "Type quit to stop talking to the magic 8 ball".red
  question = gets.strip
    case question
      when "add_answers"
        add_answers
        ask_question
      when "print_answers"
        view_answers
        ask_question
      when "quit"
        puts "Bye Felcia, see you around!".red
      when "reset_answers"
        reset_answers
      else
    puts @answers.sample
        sleep(1)
        ask_question
      end
  end

  def add_answers
  puts "What answer would you like to add to the magic 8 ball?".green
  new_answer = gets.strip.downcase
  @lc_answers = @answers.map(&:downcase)
    if @lc_answers.include? new_answer
    puts "That answer has already been input into this game"
    else
    @answers << new_answer
    print "'#{new_answer}'"
    puts " has been added to your answer choices.".green
    end
  end

  def reset_answers
    @answers = @answers_original.clone
    puts "(answers have been reset)".green
    ask_question
  end

  def view_answers
    @answers.each do |answer|
      puts "#{answer}"
    end
  end
end

ball = MagicEightBall.new


#################################################
#def ask_question
#def view_answers
#def add_answers
#def reset_answer