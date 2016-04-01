#001_create_libraries_table.rb
class CreateLibrariesTable < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name    #must be present and unique
      t.string :address #must be present and unique
      t.string :phone   #must be present and unique
    end
  end
end
