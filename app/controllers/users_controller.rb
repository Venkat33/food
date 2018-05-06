class UsersController < ApplicationController

def new
  @user = User.new
end

def create
#render plain:params[:user].inspect
  @user = User.new(user_params)
  @user.save

  render :json => @user
end

def show
@user = User.find(params[:id])
render :json => @user
end

def edit
  @user = User.find(params[:id])
  render :json => @user
end

def update
@user =User.find(params[:id])
 @user.update(user_params)
 render :json => @user
end


def destroy
  @user = User.find(params[:id])
  @user.destroy
  render :json => { message: "User delete successfullly" }
end
private
def user_params
  params.require(:user).permit(:username, :email)
end
end
