class CatalogController < ApplicationController
  def new
  	@user_turtle = User_Turtle.new(user_turtle_params)
  	@turtles = Turtle.find(:all)
    if @user_turtle.save
    	@saved_turtle = @turtles.select { |t| t.id == @user_turtle.turtle_id }
    	flash[:success] = "You like " + @saved_turtle[0].type + " Turtles!"
    	@user_turtle = User_Turtle.new
      	redirect_to catalog_url
    else
    	flash[:error] = "Failed to save"
      	redirect_to catalog_url
    end
  end
  
  def show
  	@turtles = Turtle.find(:all)
  	@user_turtle = User_Turtle.new
  end
  
  private

    def user_turtle_params
      params.require(:user_turtle).permit(:user_id, :turtle_id)
    end
end
