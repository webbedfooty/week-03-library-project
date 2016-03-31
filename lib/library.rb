# Library.rb

# + branch name [present] [unique]
# + address [p] [u]
# + phone number [p] [u]

class Library < ActiveRecord::Base

  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :name, uniqueness: true
  validates :address, uniqueness: true
  validates :phone, uniqueness: true

end
