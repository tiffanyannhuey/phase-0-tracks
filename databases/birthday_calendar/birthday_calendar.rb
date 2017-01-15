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

# explore ORM by retrieving data
birthdays = db.execute("SELECT * FROM birthdays")
puts birthdays
birthdays.each do |friend|
  puts "#{friend['name']}'s birthday is on #{friend['month']} #{friend['day']}"
end

# create a sort method that will retrieve by month

# USER INTERFACE
