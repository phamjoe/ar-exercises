require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Bob", last_name: "Ross", hourly_rate: 40)
@store1.employees.create(first_name: "George", last_name: "Curious", hourly_rate: 41)
@store2.employees.create(first_name: "Bob", last_name: "Barker", hourly_rate: 100)
@store2.employees.create(first_name: "George", last_name: "Washingmachine", hourly_rate: 80)
@store1.employees.create(first_name: "Bob", last_name: "Squarepants", hourly_rate: 60)
@store2.employees.create(first_name: "George", last_name: "Boy", hourly_rate: 70)