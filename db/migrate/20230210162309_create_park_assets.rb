class CreateParkAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :park_assets do |t|

      t.timestamps
    end
  end
end
