class UsersController < ApplicationController
  before_action :check_login, only: [:show]
   
  def new
  	@user = User.new
  end

  def create
  	
    @user  = User.new(user_params)
    
  	if @user.save
      log_in(@user)
      #check_role(@user)
      #UserMailer.signup_confirmation(@user).deliver
  	  #redirect_to new_session_path
      redirect_to @user
  	else
  	  render 'new'
  	end
  	
  end

  
  def show
  	@user = current_user
  	 
  end


  private

  def user_params
    params.require(:user).permit(:name,:image, :email, :password, :developer, :project_owner )
  end


  def check_login
    if logged_in?
    else
      redirect_to new_session_path
    end
  end

end
