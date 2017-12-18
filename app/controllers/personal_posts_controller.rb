class PersonalPostsController < ApplicationController

  skip_before_action :authenticate_request, only: [:create, :index]
 
  def index
    post = PersonalPost.where(User_id: params[:id]) 

    # post = PersonalPost.find(params[:User_id])
    render json: {status: 'SUCCESS', message:'Loaded User', data:post}, status: :ok
  end
  def show
    post = PersonalPost.where(User_id: params[:id])
    render json: {status: 'SUCCESS', message:'Loaded User', data:post}, status: :ok
  end
  def create
    post = PersonalPost.new(post_params)
    if post.save
      render json: {status: 'SUCCESS', message:'Created a new post', data:post}, status: :ok
    else
      render json: {status: 'ERROR', message:'post did not save, try again!', data:post}, status: :ok
    end
  end
  def update
    post = PersonalPost.find(params[:id])
    if post.save
      render json: {status: 'SUCCESS', message:'Created a new post', data:post}, status: :ok
    else
      render json: {status: 'ERROR', message:'post did not save, try again!', data:post}, status: :ok
    end  
  end
  def destroy
    post = PersonalPost.find(params[:id])

  end

  private
  def post_params
    params.permit(:User_id, :Post, :personal_posts)
  end

end
