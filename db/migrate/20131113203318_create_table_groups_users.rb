class CreateTableGroupsUsers < ActiveRecord::Migration
  def up
	  create_table :groups_users do |t|
	  	t.belongs_to :group
	  	t.belongs_to :user
	  end
  end

  def down
  	drop_table :groups_users

  end
end
