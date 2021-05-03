class CreateStargates < ActiveRecord::Migration[6.1]
  def change
    create_table :stargates do |t|
      t.boolean :automatic
      t.string :source
      t.integer :start_id
      t.integer :end_id
      t.boolean :blocking

      t.timestamps
    end
  end
end
