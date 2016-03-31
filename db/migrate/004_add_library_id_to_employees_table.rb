#004_add_library_id_to_employees_table.rb
class AddLibraryIdToEmployeesTable < ActiveRecord::Migration
  def change
    rename_column :employees, :libraries_id, :library_id
    end
end 
