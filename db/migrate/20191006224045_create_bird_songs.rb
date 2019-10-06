class CreateBirdSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :bird_songs do |t|
      t.string :audio_file
      t.references :country, null: false, foreign_key: true
      t.references :bird, null: false, foreign_key: true
      t.references :license, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
