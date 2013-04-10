class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :last_step_index
      t.belongs_to :program, null: false
      t.belongs_to :user, null: false

      t.timestamps
    end
    add_index :tracks, :program_id
    add_index :tracks, :user_id
  end
end
