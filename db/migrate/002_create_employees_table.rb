
#002_create_libraries_table.rb
class CreateEmployeesTable < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name    #must be present
      t.string :email   #must be present and unique
    end
  end
end
