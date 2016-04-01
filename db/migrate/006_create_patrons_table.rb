#006_create_patrons_table.rb
class CreatePatronsTable < ActiveRecord::Migration
  def change
    create_table :patrons do |t|
      t.string :name  #must be present
      t.string :email #must be present and unique
    end
  end
end
