class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :carry_apparel

  def carry_apparel 
    if (!womens_apparel.present? && !mens_apparel.present?)
      errors.add(:mens_apparel, "must select an apparel type") 
      errors.add(:womens_apparel, "must select an apparel type") 
    end
  end
end
