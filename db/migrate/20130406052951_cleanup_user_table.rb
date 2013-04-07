class CleanupUserTable < ActiveRecord::Migration
  def up
    remove_index(:users, :reset_password_token)
    remove_columns(:users, :encrypted_password,
                           :reset_password_token,
                           :reset_password_sent_at,
                           :remember_created_at)
  end

  def down
    change_table(:users) do |t|
      t.string   :encrypted_password, null: false, default: ""
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
    end

    add_index :users, :reset_password_token, unique: true
  end
end
