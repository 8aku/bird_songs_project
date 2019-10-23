class AddLocationToSong < ActiveRecord::Migration[6.0]
  def change
  	add_reference(:bird_songs, :location, index: true)
  end
end