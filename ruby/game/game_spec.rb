

#The game will introduce the players to the game and ask player one #to type out a word. 
#The first user will enter in a string and the game will use that as #the secret word

#The game will then ask the second player to guess the secret word by #typing in a letter
#The number of guesses permitted is equal to the length of the secret #word
#Until the user guesses all the letters or they reach the limit on #guesses the game will:
  #Show the secret word in a series of dashes that equal the length #of the word
  #Ask the player to type in a letter
  #The player will enter in a letter. repeated guesses don't count #against the user
    #If the letter matches a letter in the secret word, than the #letter will be revealed in the secret word
      #repeated guesses do not count against the user
    #if the letter doesn't match, then the computer will say 'wrong! #guess again'
    #The computer will continue to show the current word status to #player 2
#If player 2 guesses the entire word correctly, then the game is over #and it will print out a congratulatory message
  #Otherwise, if the game ends and the secret word is not guessed, #player 2 will receive a taunting message 

require_relative 'Game'
let (:game) {Game.new("")}

describe Game do 

  it "asks player 1 to enter a secret word" do 
    expect 
  end

  it "stores the secret word provided on initialization" do
  end 

  it "converts to the secret word to an array" do 
  end 

  it "displays the word as a series of dashes" do 
  end 

  it "equates number of guesses to secret word length" do
  end 

  it "matches user-inputted letter to array" do
  end 

  context "if inputted letter has a match in the array" do 
    
    it "displays the letter in the array" do 
    end


  end 



end