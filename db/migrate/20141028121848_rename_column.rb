class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :comments, :comment, :comment_details
  end
end
