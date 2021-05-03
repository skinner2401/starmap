class AddIsBlackHoleToSolarSystem < ActiveRecord::Migration[6.1]
  def change
    add_column :solar_systems, :is_black_hole, :boolean
  end
end
