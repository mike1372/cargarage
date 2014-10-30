class RenameCarsColumn < ActiveRecord::Migration
  def change
  	rename_column :cars, :transmisison, :transmission
  end
end
