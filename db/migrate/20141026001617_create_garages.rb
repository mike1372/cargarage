class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.string :name
      t.string :theme
      t.string :details
      t.integer :user_id

      t.timestamps
    end
  end
end
