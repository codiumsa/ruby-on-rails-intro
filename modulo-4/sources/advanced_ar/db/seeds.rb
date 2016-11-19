# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.destroy_all

Person.create! [
  {first_name: "Vanessa", last_name: "Canhete", age: 27, login: "vanecan", pass: "123"},
  {first_name: "Federico", last_name: "Canhete", age: 25, login: "fedecan", pass: "1234"},
  {first_name: "Eduardo", last_name: "Canhete", age: 28, login: "edecan", pass: "12345"},
  {first_name: "Cristian", last_name: "Cuevas", age: 25, login: "cricue", pass: "54321"},
  {first_name: "Alejandro", last_name: "Cuevas", age: 24, login: "alecue", pass: "4321"},
  {first_name: "Enrique", last_name: "Cuevas", age: 20, login: "enricue", pass: "321"},
  {first_name: "Valeria", last_name: "Cuevas", age: 10, login: "valecue", pass: "210"}
]


ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures/people")
