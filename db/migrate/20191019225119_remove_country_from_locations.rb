class RemoveCountryFromLocations < ActiveRecord::Migration[6.0]
  def change
  	remove_reference(:locations, :country, index: true)
  end
end