# Employee.rb

# + name  must be present and unique
# + email must be present and unique

class Employee < ActiveRecord::Base

  validates :name, presence: true
  validates :email, presence: true
  
  validates :email, uniqueness: true

  belongs_to :library

end
