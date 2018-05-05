class UsersController < ApplicationController

def new
  @user = User.new
end

def create
#render plain:params[:user].inspect
  @user = User.new(user_params)
  if @user.save
    flash[:notice]= "welcome"
    redirect_to user_path(@user)
  else

 render :json => @user

  end
end

def show
@user = User.find(params[:id])
end


private
def user_params
  params.require(:user).permit(:username, :email)
end
end