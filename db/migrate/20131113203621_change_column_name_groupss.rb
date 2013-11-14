class ChangeColumnNameGroupss < ActiveRecord::Migration
  def change
  	rename_column :groups_users, :groups_id, :group_id
  end
end
