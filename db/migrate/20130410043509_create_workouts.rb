class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :emotion, null: false
      t.integer :sweat, :intensity, null: false
      t.text :notes
      t.belongs_to :track, null: false
      t.belongs_to :step, null: false

      t.timestamps
    end
    add_index :workouts, :track_id
    add_index :workouts, :step_id
  end
end
