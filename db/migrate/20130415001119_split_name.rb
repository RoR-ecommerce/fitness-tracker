class SplitName < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string, after: :email
    add_column :users, :last_name,  :string, after: :first_name
    remove_column :users, :name
  end

  def down
    add_column :users, :name, :string, after: :email
    remove_column :users, :first_name, :last_name
  end
end
