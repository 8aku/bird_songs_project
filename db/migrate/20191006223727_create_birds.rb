class CreateBirds < ActiveRecord::Migration[6.0]
  def change
    create_table :birds do |t|
      t.string :common_name
      t.string :genus
      t.string :species

      t.timestamps
    end
  end
end
