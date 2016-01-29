class UsersController < ApplicationController
  def index
  end

  def new
  end

  def test
  end
  
  def create
  	@user = User.new(user_params)
  	@user.week = 1
  	@user.num_wo_submit = 0
  	@user.avail_video = 3

  	if @user.save
      session[:user_id] = @user.id
  		flash[:success] = "Welcome, you have just taken the first steps to improving yourself!!!"
  		redirect_to "/subscribers/new"
  	else
  		flash[:errors] = @user.errors.full_messages
  		redirect_to "/users/new"
  	end
  end

  def payment
  	
  end
  
  private
    def user_params
      params.require(:user).permit(:f_name, :l_name, :email, :password, :password_confirmation, :birthday, :fitness_goals, :lifestyle, :organization)
    end

end
