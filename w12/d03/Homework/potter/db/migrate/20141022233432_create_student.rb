class CreateStudent < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :name
    	t.integer :points
    	
    	t.timestamps
    end
  end
end
