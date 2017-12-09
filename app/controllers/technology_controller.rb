class TechnologyController < ApplicationController
    skip_before_action :authenticate_request, only: [:index, :create]
  def index
    technology = Technology.order('created_at DESC')
    render json: {status: 'SUCCESS', message:'Loaded User', data:technology}, status: :ok
  end
  def create
    technology = Technology.new(technology_params)
    if technology.save
      render json: {status: 'SUCCESS', message:'Created a new Technology', data:technology}, status: :ok
    else
            render json: {status: 'ERROR', message:'Technology did not save, try again!', data:technology}, status: :ok
    end
  end
  def show
    technology = Technology.find(params[:id])
    render json: {status: 'SUCCESS', message: 'Loaded the technology', data:technology}, status: :ok
  end
  def update
    technology = Technology.find(params[:id])
    if
    technology.update_attributes(technology_params)
     render json: {status: 'SUCCESS', message:'technology updated', data:technology}, status: :ok
    else
      render json: {status: 'ERROR', message:'technology updated', data:technology.errors}, status: :unprocessable_entity
    end
  end
  def destroy
    technology = Technology.find(params[:id])
    technology.destroy
    render json: {status: 'SUCCESS', message:'Technology deleted', data:technology}, status: :ok
  end
  private
  def technology_params
    params.permit(:User_id ,:Name, :Description)
  end
end