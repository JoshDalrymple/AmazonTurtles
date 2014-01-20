class User_Turtle < ActiveRecord::Base
	belongs_to :turtle
  	belongs_to :user
  	
  	validates_uniqueness_of :user_id, :scope => :turtle_id

end