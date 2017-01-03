class TodoList
  attr_accessor :list 

 def initialize(list)
  @list = list 
 end 

 def get_items
  @list 
 end 

 def add_item(new_item)
  @list << new_item
 end 

 def delete_item(unwanted_item)
  @list.delete(unwanted_item) 
 end 

 def get_item(i)
  @list.at(i)
 end 

end 

