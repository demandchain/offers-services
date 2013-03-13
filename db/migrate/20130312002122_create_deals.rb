class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :slug, :null=>false, :size=>255
      t.integer :region_id, :null=>false
      t.datetime :start_at
      t.datetime :end_at
      t.integer :num_available
      t.string :title, :size=>255
      t.integer :value
      t.integer :price
      t.string :workflow_state, :default=>"submitted", :null=>false, :size=>255

      t.timestamps
    end
  end
end
