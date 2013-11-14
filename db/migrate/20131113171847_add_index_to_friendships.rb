class AddIndexToFriendships < ActiveRecord::Migration
  def change
  	add_index :friendships, ["user_id", "friend_id"], name: 'friendship_index', unique: true
  end
end
