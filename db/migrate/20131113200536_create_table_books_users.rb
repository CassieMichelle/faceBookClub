class CreateTableBooksUsers < ActiveRecord::Migration
  def up
	  create_table :books_users do |t|
	  	t.belongs_to :book
	  	t.belongs_to :user
	  end
  end

  def down
  	drop_table :books_users

  end
end
