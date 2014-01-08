class AddManyToManyTableForUsersTurtles < ActiveRecord::Migration
  def change
  create_table :user_turtles do |t|
      t.belongs_to :user
      t.belongs_to :turtle
    end
  end
end
