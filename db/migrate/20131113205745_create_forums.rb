class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.integer :book_id
      t.integer :post_id
      t.date :deadline

      t.timestamps
    end
  end
end
