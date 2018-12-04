class Employee < ActiveRecord::Base
  # Employees must always have a first name present
  # Employees must always have a last name present
  # Employees have a hourly_rate that is a number (integer) between 40 and 200
  # Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
  # Stores must always have a name that is a minimum of 3 characters
  # Stores have an annual_revenue that is a number (integer) that must be 0 or more
  # BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
  belongs_to :stores
  validates :first_name, :last_name , presence: {message: "First and Last name must be present"}
  validates :hourly_rate, :inclusion => 40..200
  validates_associated :stores


end
