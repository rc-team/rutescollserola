class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.string :subtitle
      t.string :description

      t.timestamps
    end
  end
end
