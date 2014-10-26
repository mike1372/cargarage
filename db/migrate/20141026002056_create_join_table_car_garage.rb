class CreateJoinTableCarGarage < ActiveRecord::Migration
  def change
    create_join_table :cars, :garages do |t|
      # t.index [:car_id, :garage_id]
      # t.index [:garage_id, :car_id]
    end
  end
end
