class Game
  attr_reader :is_over, :max_number_guesses, :secret_word, :number_of_guesses, :guessed_letters


  def initialize(user_word)
    puts "Initializing new game..."
    @secret_word = user_word.split(//)
    @number_of_guesses = 0 
    @max_number_guesses = @secret_word.length
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

 
  def check_letter(letter)
    if @guessed_letters.include? letter 
       puts "You've guessed #{letter} already"
     elsif @secret_word.include? letter
       puts "You got a letter!"
       @guessed_letters << letter
     else 
      puts "There is no #{letter} in this word."
      @guessed_letters << letter
      @number_of_guesses += 1 
      puts "You have #{@max_number_guesses - @number_of_guesses} guesses left"
     end 
    p show_word(@secret_word, @guessed_letters)
  end

  def game_over
      if @number_of_guesses == max_number_guesses
        puts "Better luck next time..."
        @is_over = true
      elsif 
        (@secret_word - @guessed_letters).empty?
        puts "You won!"
        @is_over = true
      else
        @is_over
      end 
        
  end 

end



#user interface
puts "Welcome to the Word Guess game!"
puts "Player 1, enter in a secret word"
word = gets.chomp 
word_game = Game.new(word)

puts  "#{word_game.show_word(@secret_word, @guessed_letters)}"

until word_game.game_over == true 
  puts "Guess the word by typing in a letter."
  
  user2_letter = gets.chomp
  
  word_game.check_letter(user2_letter)
end 