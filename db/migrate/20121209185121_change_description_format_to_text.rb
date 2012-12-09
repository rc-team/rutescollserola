class ChangeDescriptionFormatToText < ActiveRecord::Migration
  def up
    change_column :routes,   :description, :text
    change_column :segments, :description, :text
  end

  def down
    change_column :routes,   :description, :string
    change_column :segments, :description, :string
  end
end
