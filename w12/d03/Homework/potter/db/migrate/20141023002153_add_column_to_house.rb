class AddColumnToHouse < ActiveRecord::Migration
  def change
  	add_column :houses, :hogwart_id, :integer
  end
end
