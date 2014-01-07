class CreateTurtles < ActiveRecord::Migration
  def change
    create_table :turtles do |t|
      t.string :type
      t.integer :speed
      t.string :location
      t.string :diet

      t.timestamps
    end
  end
end
