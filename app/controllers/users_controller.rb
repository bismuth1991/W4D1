class UsersController < ApplicationController
  def index
    render json: User.all
  end
  
  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 418
    end
  end
  
  def show 
    render json: find_user
  end 
  
  def update
    user = find_user
    if user.update(user_params)
      render json: user 
    else 
      render json: user.errors.full_messages, status: 418
    end 
  end
  
  def destroy
    user = find_user
    if user.destroy
      render json: user
    end
  end
  
  private
  
  def find_user
    User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:username)
  end
  
end