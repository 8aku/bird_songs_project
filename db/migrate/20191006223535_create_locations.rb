class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
