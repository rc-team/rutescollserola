class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.text :text
      t.integer :point
      t.float :lat
      t.float :lon
      t.integer :segment_id

      t.timestamps
    end
  end
end
