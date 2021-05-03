class CreateStargateManualOverrides < ActiveRecord::Migration[6.1]
  def change
    create_table :stargate_manual_overrides do |t|
      t.integer :original_start_id
      t.integer :original_end_id
      t.integer :start_id
      t.integer :end_id
      t.boolean :bloacking
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
