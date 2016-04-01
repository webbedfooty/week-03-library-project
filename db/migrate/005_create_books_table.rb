#005_create_books_table.rb
class CreateBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title   #must be present
      t.string :author  #must be present
      t.string :isbn    #must be present and unique
    end
  end
end

# + to be added later?
# + location must be present and unique
#     ...as indicated by either library_id or patron_id, showing where
#     it is and specifically who has it (which library or which patron)
