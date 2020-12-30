class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :name       , null: false
      t.string :text       , null: false
      t.integer :area_id   , null: false
      t.integer :user_id
      t.timestamps
    end
  end
end
