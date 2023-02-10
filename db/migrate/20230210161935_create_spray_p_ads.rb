class CreateSprayPAds < ActiveRecord::Migration[7.0]
  def change
    create_table :spray_p_ads do |t|

      t.timestamps
    end
  end
end
