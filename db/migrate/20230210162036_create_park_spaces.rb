class CreateParkSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :park_spaces do |t|

      t.timestamps
    end
  end
end
