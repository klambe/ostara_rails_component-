class CreateMediaFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :media_files do |t|
      t.string :filename
      t.string :s3_location
      t.boolean :approval
      t.boolean :flagged
      t.references :Event, foreign_key: true

      t.timestamps
    end
  end
end
