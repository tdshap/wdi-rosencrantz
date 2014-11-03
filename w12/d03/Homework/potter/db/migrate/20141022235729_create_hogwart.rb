class CreateHogwart < ActiveRecord::Migration
  def change
    create_table :hogwarts do |t|
    	t.name
    	t.timestamps
    end
  end
end
