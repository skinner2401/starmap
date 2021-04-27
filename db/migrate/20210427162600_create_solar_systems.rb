class CreateSolarSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :solar_systems do |t|
      t.string :name
      t.string :description
      t.integer :galaxy_id

      t.timestamps
    end
  end
end
