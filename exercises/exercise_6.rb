require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Bob", last_name: "Ross", hourly_rate: 10)
@store1.employees.create(first_name: "George", last_name: "Curious", hourly_rate: 1)
@store2.employees.create(first_name: "Bob", last_name: "Barker", hourly_rate: 600)
@store2.employees.create(first_name: "George", last_name: "Washingmachine", hourly_rate: 20)
@store1.employees.create(first_name: "Bob", last_name: "Squarepants", hourly_rate: 30)
@store2.employees.create(first_name: "George", last_name: "Boy", hourly_rate: 70)