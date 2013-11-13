class DropTableSpecs < ActiveRecord::Migration
  def up
  	drop_table :specs
  end

  def down
  	create_table :specs do |t|
      t.column :user_id,    :integer,:null => false
      t.column :first_name, :string, :default => ""
      t.column :last_name,  :string, :default => ""
      t.column :gender,     :string
      t.column :city,       :string, :default => ""
      t.column :state,      :string, :default => ""
    end
  end
end
