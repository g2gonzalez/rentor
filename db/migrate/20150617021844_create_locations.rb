class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :apt_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
