# Employee.rb

# + name [present]
# + email address [present] [unique]

class Employee < ActiveRecord::Base

  validates :name, presence: true
  validates :email, presence: true
  #validates :email, uniqueness: true

end
