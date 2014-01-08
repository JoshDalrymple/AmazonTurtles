class User_Turtle < ActiveRecord::Base
	belongs_to :turtle
  	belongs_to :user
end