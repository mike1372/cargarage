class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :colour
      t.string :body_type
      t.string :engine
      t.string :transmisison
      t.string :wheels_tyres
      t.string :other_details
      t.integer :user_id

      t.timestamps
    end
  end
end
