# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Separate each item at the " ", start an array
  # set default quantity
  # Array of items and their corresponding default quantities go into a hash
  # print the list to the console [can you use one of your other methods here?]

# output: [what data type goes here, array or hash?] Hash = {items, quantities}


def create_list(items_to_list)
  grocery_list = {}
  split_food = items_to_list.split(" ")
  split_food.each {|food| grocery_list.store(food, 1)}
  grocery_list
end

# DRIVER CODE for create list method
  #items_to_list = "carrots apples cereal pizza"
  #create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: grocery list; item name; quantity
# steps: 
  #Insert user input into hash. Ask for quantity (integer), insert quantity in as value (quantity).
# output: Hash of updated list {items, quantities}

def add_item_to_list(grocery_list, new_item, quantity)
 grocery_list.store(new_item, quantity)
 grocery_list
end

# DRIVER CODE for add to list method
  #add_item_to_list(grocery_list, "candy", 2)

# Method to remove an item from the list
# input: grocery list, item name
# steps: 
  #delete where item name (key) matches element in grocery list.
# output: Hash - deleted item

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  grocery_list
end

# DRIVER CODE for remove from list method
  #remove_item(grocery_list, "carrots")

# Method to update the quantity of an item
# input: grocery list; item name; quantity
# steps: 
  #use item name to access key in the grocery list
  # quantity entered will be new quantity of item
# output: Hash with quantity updated next to item name

def update_quantity(grocery_list, item, quantity)
  grocery_list[item] = quantity
  grocery_list
end

# DRIVER CODE for update quantity method
  #update_quantity(grocery_list, "cereal", 45) 

# Method to print a list and make it look pretty
# input: grocery list
# steps: 
  # FOR EACH item, write a statement that puts the item name, qty
# output: Each item and quantity in hash printed as a new line until there are no more items.

def print_list(grocery_list)
  grocery_list.each do |item, quantity|
    puts "#{item}, qty: #{quantity}"
  end
end

# DRIVER CODE for print list method
  #p print_list(grocery_list)



# Test Solution
items_to_list = "carrots apples cereal pizza"
grocery_list = create_list(items_to_list)
print_list(grocery_list)
add_item_to_list(grocery_list, "lemonade", 2)
print_list(grocery_list)
add_item_to_list(grocery_list,"tomatoes", 3)
print_list(grocery_list)
add_item_to_list(grocery_list, "onions", 1)
print_list(grocery_list)
add_item_to_list(grocery_list, "ice cream", 4)
print_list(grocery_list)
remove_item(grocery_list, "lemonade")
print_list(grocery_list)
update_quantity(grocery_list, "ice cream", 1)
print_list(grocery_list)

#Reflection
#1. Writing detailed the pseudocode helps break down the logic that is needed for each method
    # allowing me to focus on the syntax and built in methods needed when writing actual code 
    # Overall, it helps give a step-by-step approach that's easier to follow
#2. # An array is a collection of similar variables grouped together, but a hash is preferred 
    # when there is a group of variables that have similar labels but can take different associated 
    # values for each label. The benefit with hashes is that indexing can be done by accessing a specific key
#3. # The method will return the last output in the method. By putting in a variable, the implied return will 
    # by default return the variable value as the output 
#4. # You can pass strings, arrays, hashes, booleans, and integers into methods
#5. # You can pass information between methods by calling the method as a variable within another method
#6. # Passing methods as arguments was solidified in this challenge. A source of confusion in this challenge
    # was how to feed information into a hash. I could use more practice knowing what I can/ can't do 
    # with arrays and hashes

