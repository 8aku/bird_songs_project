class AddLocationToBirdsong < ActiveRecord::Migration[6.0]
  def change
  	add_belongs_to(:bird_songs, :locations)
  end
end
