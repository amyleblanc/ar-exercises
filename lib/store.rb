class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { 
    minimum: 3, 
    message: "- Name must be minimum 3 characters." 
  }
  validates :annual_revenue, numericality: { 
    only_integer: true, 
    greater_than_or_equal_to: 0,
    message: "- Must be a number greater than or equal to 0"
  }
end
