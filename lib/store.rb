class Store < ActiveRecord::Base
#   Stores must always have a name that is a minimum of 3 characters
#   Stores have an annual_revenue that is a number (integer) that must be 0 or more
#   BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
  has_many :employees
  validates :name, length: {minimum: 3, message: "Name must have a minimum of 3 characters "}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "Must be an integer greater than 0" }
  validates :mens_apparel, inclusion: { in: [true, false], message: "Store must carry men's or women's apparel"}
  validates :womens_apparel, inclusion: { in: [true, false], message: "Store must carry men's or women's apparel"}
  validate :carry_apparel
  def carry_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel || :womens_apparel, "Stores must carry at least one of the men's or women's apparel")
    end
  end
end

