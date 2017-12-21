class TechnologyPostsController < ApplicationController
    skip_before_action :authenticate_request, only: [:index, :show, :create, :update]
  def index
    technology_post = TechnologyPost.where(Technology_id: params[:id])
    render json: {status: 'SUCCESS', message:'Loaded User', data:technology_post}, status: :ok
  end
  def create
    technology_post = TechnologyPost.new(technology_post_params)
    if technology_post.save
      render json: {status: 'SUCCESS', message:'Created a new Technology post', data:technology_post}, status: :ok
    else
            render json: {status: 'ERROR', message:'Technology post did not save, try again!', data:technology_post}, status: :ok
    end
  end
  def show
    technology_post = TechnologyPost.where(Technology_id: params[:id])
    render json: {status: 'SUCCESS', message: 'Loaded the technology post', data:technology_post}, status: :ok
  end
  def update
    technology_post = TechnologyPost.find(params[:id])
    if
    technology_post.update_attributes(technology_post_params)
     render json: {status: 'SUCCESS', message:'technology post updated', data:technology_post}, status: :ok
    else
      render json: {status: 'ERROR', message:'technology post updated', data:technology_post.errors}, status: :unprocessable_entity
    end
  end
  def destroy
    technology_post = TechnologyPost.find(params[:id])
    technology_post.destroy
    render json: {status: 'SUCCESS', message:'Technology post deleted', data:technology_post}, status: :ok
  end
  private
  def technology_post_params
    params.permit(:User_id ,:Technology_id, :Post)
  end
end