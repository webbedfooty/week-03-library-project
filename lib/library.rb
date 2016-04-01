# Library.rb

# + branch name   must be present and unique
# + address       must be present and unique
# + phone number  must be present and unique

class Library < ActiveRecord::Base

  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true

  validates :name, uniqueness: true
  validates :address, uniqueness: true
  validates :phone, uniqueness: true

  has_many :employees

end
