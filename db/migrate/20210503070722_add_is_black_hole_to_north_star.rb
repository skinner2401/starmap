class AddIsBlackHoleToNorthStar < ActiveRecord::Migration[6.1]
  def change
    add_column :north_stars, :is_black_hole, :boolean
  end
end
