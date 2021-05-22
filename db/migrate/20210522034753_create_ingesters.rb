class CreateIngesters < ActiveRecord::Migration[6.1]
  def change
    create_table :ingesters do |t|

      t.timestamps
    end
  end
end
