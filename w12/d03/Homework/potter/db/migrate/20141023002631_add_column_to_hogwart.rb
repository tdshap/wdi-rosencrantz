class AddColumnToHogwart < ActiveRecord::Migration
  def change
  	add_column :hogwarts, :name, :string
  end
end
