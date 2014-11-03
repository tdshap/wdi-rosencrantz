class CreateLike < ActiveRecord::Migration
  def change
    create_table :likes do |t|
    	t.integer :user_id
    	t.integer :song_id
    	t.timestamps
    end
  end
end
