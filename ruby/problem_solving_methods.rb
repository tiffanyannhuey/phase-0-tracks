# 5.6 Pairing

#Release 0
#Write a method that takes an array of integers and
#and integer to search for
#The method should return the index of the item
#or nil if the integer is not present in the array

arr = [42,89,23,1]

def search_array(array, number)
    index = 0 #index starts at 0
    while index < array.length 
      if array[index] == number #if the index nummber at that array equals 'number'
        p index #print the index.
      end #implied return will print nil if the number is not found
      index +=1 #set index plus one
    end
end 


#test method
search_array(arr, 1) #should return 3
search_array(arr, 24) #should return nil 

#another method test
arr2 = [5,6,7,8]
search_array(arr2,5) #should return 0

#Release 1
#Calculate Fibonacci numbers
#numbers start out 0, 1
#each number will be the sum of the previous two numbers

def fib(n)
fibonacci_array = [] #create an empty container for the array
a = 0 #the first fibonacci number is 0
b = 1 #the second fibonacci number is 1
fibonacci_array.push(a) #push 0 into the array
n.times do #n represents the fibonacci term
  initial_a = a #this variable will now be the preceding fibonacci number
  a = b #this will now be the next number
  b = initial_a + b #this number will now be the sum of the pre-existing two numbers
  fibonacci_array.push(a) #increment by next number until n times is reached
  end
  p fibonacci_array
end

#test method
fib(6)
fib (10)


#Release 2

#Question 1
#I researched the bubble sort method

#Question 2
# My conceptual understanding of this algorithm 
# is that you take the first two items in the array and compare
# you sort those two items in descending order
# you then repeat the process 
# by comparing that number with the next number in the array
# the loop continues until there is no two items left to compare

# Drawing out the array and marking the ones that need to be compared are 
# help with visualizing

#Question 3
#My emotional state was overwhelmed at this point
#I found it very hard to concentrate on the individual pieces at first
#Feeling overwhelmed affected my ability to understand the material
#Because my motivation to take in additional information at this point was lacking 

#Question 2


array = [1,4,34,46,7]

# To calculate how many times integers need to be compared, set a variable for the length of an array
# Until there is no longer two items to compare 
  #If the first variable of the array is greater than the variable next to it (+1)
    #swap the variables so that the larger of the two comes first
#End the the loop if there are no longer two integers that need to be swapped 

def bubble_sort(array)
  n = array.length 
  loop do 
    swapped = false 

    (n-1).times do |index| 
      if array[index] > array[index+1]
        array[index], array[index+1] = array[index+1], array[index]
        swapped = true
      end
    end

    break if not swapped 
  end
 p array
end

bubble_sort(array)




