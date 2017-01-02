class Game
  attr_reader :is_over
  attr_accessor :secret_word, :number_of_guesses, :guessed_letters

  def initialize(user_word)
    puts "Initializing new game..."
    @secret_word = user_word.split(//)
    @number_of_guesses = 0 
    @guessed_letters = []
    @is_over = false 
  end 

  def show_word(secret_word, guessed_letters)
    display_string = ''
    @secret_word.each do |letter|
      if @guessed_letters.include? letter
        display_string << letter
      else
        display_string << "_ "
      end
    end 
    display_string
  end

# def check_letter(letter)

#   @guessed_letters << letter

#   if word_array.include? letter
#     puts "You got a letter!"
#     
#   elsif 
#     guessed_letters.include? letter 
#     puts "You've guessed #{letter} already"
# else 
#       puts "There is no #{letter} in this word."
##     guessed_letters << letter
#      @number_of_guesses += 1 
# end 
#end 

end


#user interface
#puts "Welcome to the Word Guess game!"
#puts "Player 1, enter in a secret word"
#user_word = gets.chomp 
#word_game = Game.new(user_word)
#puts "Guess the word by typing in a letter."
#p word_game.show_word(@secret_word, guessed_letters)
#user2_letter = gets.chomp
#word_game.check_letter(user2_letter)