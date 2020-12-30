class CreateSpotTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :spot_tag_relations do |t|

      t.timestamps
    end
  end
end
