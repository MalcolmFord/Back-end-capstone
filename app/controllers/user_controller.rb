require "scrypt"

class UserController < ApplicationController
  def index
    user = User.order('created_at DESC');
    render json: {status: 'SUCCESS', message:'Loaded User', data:user}, status: :ok
  end
  def show
    user = User.find(params[:id])
    render json: {status: 'SUCCESS', message:'Loaded User', data:user}, status: :ok
  end
  def create
    user = User.new(user_params)
    if user.save
              render json: {status: 'SUCCESS', message:'Saved New User!', data:user}, status: :ok
    else
              render json: {status: 'ERROR', message:'User Not Saved!', data:user.errors}, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.permit(:First_name, :Last_name,:DOB, :email, :password)
  end
end
