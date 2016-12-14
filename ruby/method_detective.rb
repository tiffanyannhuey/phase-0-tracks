# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

#Some more swapcase examples
p "HeLlO".swapcase
# => "hElLo"
p "FriEnD".swapcase
# => "fRIeNd"


"zom".insert(2, 'o')
# => “zoom”
#this adds an additional string before the character at a given index

#Another example of an insert
p "hey mon".insert(5, 'o')
# => "hey moon"

p "enhance".center(20)
# => "    enhance    "

#Another .center example
p "I'm in the center".center(20)
# => " I'm in the center  "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

#Another upcase example
p "In the name of the law".upcase
# => "IN THE NAME OF THE LAW"

# "the usual".<???>
#=> "the usual suspects"

#Using the append to combine strings
a = "the usual"
a << " suspects"
# => "the usual suspects"

#another example of append
b = "howdy"
p b << "hoo"
# => "howdyhoo"

p " suspects".prepend "the usual"
# => "the usual suspects"
# adds the given string in front of a string



#another example of prepend
p " there!".prepend "ahoy"
# => "ahoy there!"


"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

#Another example of .chop
p "Hi-yah".chop
# => "Hi-ya"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze "     "
# => "Elementary, my dear Watson!"

#Another example of squeeze
"Let's      get     closer    <3".squeeze "      "
=> "Let's get closer <3"

p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

#Another example of .ord
p "a".ord
# => 97
p "b".ord
# => 98
p "c".ord
# => 99
#didn't know what ordinal values were
#so had to look it up
#one reference is here: https://cs.nyu.edu/courses/spring99/A22.0002.002/lecture_notes/lecture5/node16.html

p "How many times does the letter 'a' appear in this string?".count "a"
# => 4

#another example of count
p "How many woodchucks could a woodchuck chuck?".count "chuck"
#=> 17 
# I noticed that this counts each character and not the word chuck
# If count counted every "chuck" string it would be 3

