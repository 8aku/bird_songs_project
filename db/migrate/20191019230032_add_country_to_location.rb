class AddCountryToLocation < ActiveRecord::Migration[6.0]
  def change
  	add_reference(:locations, :country, index: true)
  end
end
