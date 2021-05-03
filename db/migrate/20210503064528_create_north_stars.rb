class CreateNorthStars < ActiveRecord::Migration[6.1]
  def change
    create_table :north_stars do |t|
      t.integer :solar_system_id
      t.string :name
      t.string :description
      t.integer :data_source

      t.timestamps
    end
  end
end
