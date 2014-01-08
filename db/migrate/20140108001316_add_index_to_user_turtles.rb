class AddIndexToUserTurtles < ActiveRecord::Migration
  def change
  	add_index :user_turtles, :user_id
  	add_index :user_turtles, :turtle_id
  end
end
