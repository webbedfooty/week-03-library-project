# Employee.rb

# + name  must be present and unique
# + email must be present and unique

class Employee < ActiveRecord::Base

  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  belongs_to :library

end
