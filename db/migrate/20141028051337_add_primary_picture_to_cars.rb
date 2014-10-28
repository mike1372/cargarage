class AddPrimaryPictureToCars < ActiveRecord::Migration
  def change
    add_column :cars, :primary_picture, :string
  end
end
