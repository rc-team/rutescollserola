class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.string :name
      t.string :subtitle
      t.string :description
      t.integer :ini_vertex_id
      t.integer :end_vertex_id
      t.integer :distance
      t.integer :height
      t.integer :time

      t.timestamps
    end
  end
end
