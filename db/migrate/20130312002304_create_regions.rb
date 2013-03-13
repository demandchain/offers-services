class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :slug, :null=>false, :size=>255
      t.string :name, :null=>false, :size=>255

      t.timestamps
    end
  end
end
