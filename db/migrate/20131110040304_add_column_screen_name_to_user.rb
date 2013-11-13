class AddColumnScreenNameToUser < ActiveRecord::Migration
  def change
  	add_column :users, :screen_name, :string, :null => false, :unique => true
  end
end
