#003_add_libraries_id_to_employees_table.rb
class AddLibrariesIdToEmployeesTable < ActiveRecord::Migration
  def change
    add_column :employees, :libraries_id, :integer
    end
end
