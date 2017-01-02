class Game

  def initialize(user_word)
    @secret_word = user_word
    @word_array = @secret_word.split("//")
    @number_of_guesses = 0 
    @guessed_letters = []
    @is_over = false 
  end 

  def show_word
    word_array.each do |guess|
      if word_array.include? guessed_letters
        print |guess|
      else
        print "_"
      end
  end

#  def check_letter(letter)
#
#    @guessed_letters << letter
#
#    if word_array.include? letter
#      puts "You got a letter!"
#      
#    elsif 
#      guessed_letters.include? letter 
#      puts "You've guessed #{letter} already"
#    else 
#      puts "There is no #{letter} in this word."
# #     guessed_letters << letter
##      @number_of_guesses += 1 
  end 

end


# user interface

#puts "Welcome to the Word Guess game!"
#puts "Player 1, enter in a secret word"

#user_word = gets.chomp 
#word_game = Game.new(secret_word)