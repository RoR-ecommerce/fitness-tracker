class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.float :chest, :arms, :waist, :hips, :thighs, :weight, null: false
      t.belongs_to :track, null: false
      t.belongs_to :step, null: false

      t.timestamps
    end
    add_index :measurements, :track_id
    add_index :measurements, :step_id
  end
end
