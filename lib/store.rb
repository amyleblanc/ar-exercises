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
  validate :must_carry_mens_or_womens_apparel

  def must_carry_mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "- Must carry either mens or womens apparel")
      errors.add(:womens_apparel, "- Must carry either mens or womens apparel")
    end
  end
end
