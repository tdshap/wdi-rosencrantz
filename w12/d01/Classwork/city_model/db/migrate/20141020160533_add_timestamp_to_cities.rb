class AddTimestampToCities < ActiveRecord::Migration
  def change
  	add_column :cities, :timestamps, :timestamp
  end
end
