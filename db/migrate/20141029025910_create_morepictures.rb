class CreateMorepictures < ActiveRecord::Migration
  def change
    create_table :morepictures do |t|
      t.string :extra_picture
      t.integer :car_id

      t.timestamps
    end
  end
end
