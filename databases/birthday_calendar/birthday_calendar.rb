# BIRTHDAY CALENDAR

# You can use this program to store the birthdays of your friends
# You can see which friends are celebrating their birthday by typing in the month 

# require gems
require 'sqlite3'
require 'faker'


# create SQLite3 database
db = SQLite3::Database.new ("birthdays.db")
db.results_as_hash = true

# create fancy string
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS birthdays(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  month VARCHAR(255), 
  day INT
  )
SQL

# create a birthday table (if not there already)
db.execute(create_table_cmd)

# add a test birthday
# db.execute("INSERT INTO birthdays (name, month, day) VALUES ('Tiffany', 'November', 10)")


# add a friend's birthday
def add_birthday(db, name, month, day)
  db.execute("INSERT INTO birthdays (name, month, day) VALUES (?, ?, ?)", [name, month, day])
end

# DRIVER CODE to test add birthday method
#p add_birthday(db, 'Josh', 'April', 8)

# create a sort method that will retrieve by month

def sort_by_month(db, birthday_month)
  birthday_month = db.execute("SELECT * FROM birthdays WHERE month=? ORDER BY day ASC", [birthday_month]) 
  birthday_month.each do |friend|
    puts "#{friend['name']}'s birthday is on #{friend['month']} #{friend['day']}"
  end
end

#DRIVER CODE to test month sort
# add_birthday(db, 'Samantha', 'November', 20)
sort_by_month(db, 'November')


# explore ORM by retrieving data
 birthdays = db.execute("SELECT * FROM birthdays")
 puts birthdays
 birthdays.each do |friend|
   puts "#{friend['name']}'s birthday is on #{friend['month']} #{friend['day']}"
 end



# USER INTERFACE
# puts "What would you like to do?"
# puts "To add a friend's birthday, type 1. To find a birthday, type 2."
# 
# valid_input = false
# 
# 
#   choice = gets.chomp
#   if choice == 1
#     puts "You've picked choice 1"
      finished = false
      until finished == true
        puts "Enter your friend's name. Type q to exit. "
        name = gets.chomp
        if name == "q"
          puts "Goodbye"
          finished = true
        else
          puts "What month is your friend's birthday?"
          month = gets.chomp
          puts "On which day is your friend's birthday"
          day = gets.chomp.to_i
          add_birthday(db, name, month, day)
        end 
        p birthdays
      end 

 

#   else choice == 2
#     puts "ok"
#   end


