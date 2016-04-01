# Patron.rb

# + name  must be present
# + email must be present and unique

class Patron < ActiveRecord::Base

  validates :name, presence: true
  validates :email, presence: true

  validates :email, uniqueness: true

  has_many :books

end
