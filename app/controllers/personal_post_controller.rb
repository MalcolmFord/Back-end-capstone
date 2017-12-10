class PersonalPost < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  def index
    post = PersonalPost.order('created_at DESC')
    render json: {status: 'SUCCESS', message:'Loaded User', data:post}, status: :ok
  end
  def show
    post = PersonalPost.find(params[:id])
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
    params.permit(:Post)
  end

end
