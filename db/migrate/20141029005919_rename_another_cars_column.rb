class RenameAnotherCarsColumn < ActiveRecord::Migration
  def change
  	rename_column :cars, :model, :moddel
  end
end
