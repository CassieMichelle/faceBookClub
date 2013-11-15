class AddIndexToGroupsUsers < ActiveRecord::Migration
  def change
  	def change
  	add_index :groups_users, ["user_id", "group_id"], name: 'group_user_index', unique: true
  end
  end
end
