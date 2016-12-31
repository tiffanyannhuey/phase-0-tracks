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
  remove_item = @list.index(unwanted_item)
  @list.delete_at(remove_item)
  @list 
 end 

 def get_item(i)
  wanted_item = @list.at(i)
  p wanted_item 
 end 

end 

