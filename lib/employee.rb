class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store_id, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than: 40, less_than: 200}

  before_save :create_password

  # It is considered good practice to declare callback methods as private. 
  #If left public, they can be called from outside of the model and violate the principle of object encapsulation.
  private
  def create_password
    range = [*'0'..'9',*'A'..'Z',*'a'..'z']
    self.password = (0...8).map{ range.sample }.join
  end

end
