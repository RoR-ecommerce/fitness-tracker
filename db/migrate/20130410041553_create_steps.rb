class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name, :step_class, null: false
      t.integer :day, :position, null: false
      t.belongs_to :program, null: false

      t.timestamps
    end
    add_index :steps, :program_id
  end
end
