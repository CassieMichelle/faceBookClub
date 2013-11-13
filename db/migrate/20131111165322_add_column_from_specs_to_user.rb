class AddColumnFromSpecsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string, default: ""
  	add_column :users, :last_name, :string, default: ""
  	add_column :users, :city, :string, default: ""
  	add_column :users, :state, :string, default: ""
  	add_column :users, :gender, :string, default: ""
  end
end
