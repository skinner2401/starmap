class CreateStarNodes < ActiveRecord::Migration[6.1]
  def change
    create_table :star_nodes do |t|
      t.string :name
      t.string :description
      t.integer :north_star_id

      t.timestamps
    end
  end
end
