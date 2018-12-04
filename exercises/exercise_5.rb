require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total Revenue: #{Store.all.sum(:annual_revenue)}"
puts "Average Revenue: #{Store.all.average(:annual_revenue)}"
puts "Store with > 1M revenue: #{Store.where("annual_revenue > 1000000").count}"
