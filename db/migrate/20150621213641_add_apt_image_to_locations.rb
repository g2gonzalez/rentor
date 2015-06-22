class AddAptImageToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :apt_image, :string
  end
end
