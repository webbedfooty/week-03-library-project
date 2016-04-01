# Book.rb

# + title    must be present
# + author   must be present
# + ISBN     must be present and unique
# + 
# + location must be present and unique
#     ...as indicated by either library_id or patron_id, showing where
#     it is and specifically who has it (which library or which patron)

class Book < ActiveRecord::Base

  #validates :name, presence: true
  #validates :email, presence: true
  #validates :email, uniqueness: true



end
