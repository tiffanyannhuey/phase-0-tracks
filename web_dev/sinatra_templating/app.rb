# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# add an ERB template to show which students are going to CHI

get '/chicago' do 
  @campus = db.execute("SELECT * FROM students WHERE campus=('CHI')")
  erb :chicago
end

# use a form to search for a student
get '/update' do
  erb :update
end

# update students list via a form
post '/newcampus' do
  p params 
  db.execute("UPDATE students SET campus =(?) WHERE name=(?)", [params['campus'], params['name']])
  redirect '/'
end


