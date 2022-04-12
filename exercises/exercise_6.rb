require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create([
  {first_name: "Khurram", last_name: "Virani", hourly_rate: 60},
  {first_name: "Homer", last_name: "Simpson", hourly_rate: 90},
  {first_name: "Marge", last_name: "Simpson", hourly_rate: 120},
  {first_name: "Bart", last_name: "Simpson", hourly_rate: 40},
  {first_name: "Lisa", last_name: "Simpson", hourly_rate: 60},
  {first_name: "Maggie", last_name: "Simpson", hourly_rate: 50}
])

@store2.employees.create([
  {first_name: "Peter", last_name: "Griffin", hourly_rate: 50},
  {first_name: "Lois", last_name: "Griffin", hourly_rate: 40},
  {first_name: "Chris", last_name: "Griffin", hourly_rate: 90},
  {first_name: "Meg", last_name: "Griffin", hourly_rate: 39},
  {first_name: "Stewie", last_name: "Griffin", hourly_rate: 60}
])
