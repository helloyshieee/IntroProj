class CreateSprayPads < ActiveRecord::Migration[7.0]
  def change
    create_table :spray_pads do |t|
      t.string :park_name
      t.string :address
      t.integer :complex_id

      t.timestamps
    end
  end
end
