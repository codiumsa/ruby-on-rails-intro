# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create! [
  { username: "Fiorina", password_digest: "Fiorina"},
  { username: "Trump", password_digest: "Trump"},
  { username: "Carson", password_digest: "Carson"},
  { username: "Clinton", password_digest: "Clinton"}
]


User.find_by!(username: "Fiorina").create_profile(first_name: "Carly", last_name: "Fiorina", birth_year: 1954, gender: "female")
User.find_by!(username: "Trump").create_profile(first_name: "Donald", last_name: "Trump", birth_year: 1946, gender: "male")
User.find_by!(username: "Carson").create_profile(first_name: "Ben", last_name: "Carson", birth_year: 1951, gender: "male")
User.find_by!(username: "Clinton").create_profile(first_name: "Hillary", last_name: "Clinton", birth_year: 1947, gender: "female")

dateRange = 100
dateTrack = Date.today
User.find_by!(username: "Fiorina").todo_lists.create! [
  { list_name: "List for Fiorina", list_due_date: dateTrack }
]

dateTrack = Date.today + rand(0..dateRange).day
User.find_by!(username: "Trump").todo_lists.create! [
  { list_name: "List for Trump", list_due_date: dateTrack }
]

dateTrack = Date.today + rand(0..dateRange).day
User.find_by!(username: "Carson").todo_lists.create! [
  { list_name: "List for Carson", list_due_date: dateTrack }
]

dateTrack = Date.today + rand(0..dateRange).day
User.find_by!(username: "Clinton").todo_lists.create! [
  { list_name: "List for Clinton", list_due_date: dateTrack }
]

TodoList.all.each do |td|
  puts "Seteando tareas para lista #{td.list_name}"
  for i in 1..5 do
      dateTrack = Date.today + rand(0..dateRange).day
      puts "Seteando tarea #{i} #{dateTrack}"
      #ti = TodoItem.new(title: "Work #{i}", due_date: dateTrack,
      #description: "Description #{i}", completed: false)
      #td.todo_items<<ti
      #td.save!
      td.todo_items.create!({ title: "Work #{i}", due_date: dateTrack,
                              description: "Description #{i}", completed: false})
    end
  end
