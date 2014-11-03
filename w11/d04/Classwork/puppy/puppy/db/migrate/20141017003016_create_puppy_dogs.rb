class CreatePuppyDogs < ActiveRecord::Migration
  def change
    create_table :puppy_dogs do |t|
      t.string :name
      t.string :breed
      t.integer :cuteness

      t.timestamps
    end
  end
end
