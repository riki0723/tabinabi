class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :text
      t.integer :user_id
      t.timestamps
    end
  end
end
