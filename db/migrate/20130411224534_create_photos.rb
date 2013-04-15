class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :type
      t.integer :owner_id
      t.string :owner_type

      t.timestamps
    end
  end
end
