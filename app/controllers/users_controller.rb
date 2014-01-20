class UsersController < ApplicationController
	before_action :signed_in_user, only: [:show]
	before_action :correct_user,   only: [:show]
	
  def new
  	@user = User.new
  end
  
  def edit
  	@user = User.find(params[:id])
  end
  
  def show
  	@user = User.find(params[:id])
  	@user_turtles = User_Turtle.where(user_id: params[:id]).pluck(:turtle_id)
  	@turtles = Turtle.find(@user_turtles)
  	
  	puts @turtles.to_yaml
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Turtle App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
    def signed_in_user
    	unless signed_in?
        	store_location
        	redirect_to signin_url, notice: "Please sign in."
      	end
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to root_url, notice: "You can only view your own information." unless current_user?(@user)
    end
  
end
