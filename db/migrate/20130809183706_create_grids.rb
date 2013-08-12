class CreateGrids < ActiveRecord::Migration
  def change
    create_table :grids do |t|
      t.string :name
      t.string :description
      t.integer :pkts_out
      t.timestamps
    end
  end
end
