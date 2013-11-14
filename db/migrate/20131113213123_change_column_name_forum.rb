class ColumnNameForum < ActiveRecord::Migration
  def change
  	remove_column :forums, :deadline
  	
  end


end
