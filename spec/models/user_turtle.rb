require 'spec_helper'

describe User_Turtle do
	it "should have a unique user_id, turtle_id" do
    	User_Turtle.create!(:user_id=>1, :turtle_id=>1)
    	User_Turtle = User_Turtle.new(:user_id=>1, :turtle_id=>1)
    	User_Turtle.should_not be_valid
  	end
  	
  	it "should have a allow multiple user ID's" do
    	User_Turtle.create!(:user_id=>1, :turtle_id=>2)
    	User_Turtle = User_Turtle.new(:user_id=>1, :turtle_id=>3)
    	User_Turtle.should be_valid
  	end
end