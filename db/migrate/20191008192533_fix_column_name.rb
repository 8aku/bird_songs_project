class FixColumnName < ActiveRecord::Migration[6.0]
  def change
  	rename_column :types, :type, :type_name
  end
end
