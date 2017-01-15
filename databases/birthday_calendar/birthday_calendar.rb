# BIRTHDAY CALENDAR

# You can use this program to store the birthdays of your friends
# You can see which friends are celebrating their birthday by typing in the month 

# require gems
require 'sqlite3'
require 'faker'


# create SQLite3 database
db = SQLite3::Database.new ("birthdays.db")

# create fancy string
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS birthdays(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  month INT, 
  day INT
  )
SQL

# create a birthday table (if not there already)
db.execute(create_table_cmd)

# add a test birthday
# db.execute("INSERT INTO birthdays (name, month, day) VALUES ('Tiffany', 11, 10)")

# explore ORM by retrieving data
birthdays = db.execute("SELECT * FROM birthdays")
puts birthdays.class
p birthdays

# create a sort method that will retrieve by month

# USER INTERFACE
