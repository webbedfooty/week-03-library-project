#007_add_patron_id_to_books_table.rb
class AddPatronAndLibraryIdToBooksTable < ActiveRecord::Migration
  def change
    add_column :books, :patron_id, :integer
    add_column :books, :library_id, :integer
  end
end
