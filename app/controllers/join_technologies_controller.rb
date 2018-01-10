class JoinTechnologiesController < ApplicationController
  def index
    tech = JoinTechnology.order('created_at DESC')
    render json: {status: 'SUCCESS', message:'Loaded joined communities', data:tech}, status: :ok
  end
  def show
    tech = Technology.includes(:Join_technology).where('Join_technologies.User_id = ?', @current_user).references(:Join_technology)
    render json: {status: 'SUCCESS', message:'Loaded user joined technologies', data:tech}
  end
  def create
    tech = JoinTechnology.new(join_params)
    if tech.save
          render json: {status: 'SUCCESS', message:'saved joined community', data:tech}, status: :ok
    else
          render json: {status: 'SUCCESS', message:'did not save join community', data:tech}, status: :ok
    end
  end
  def update
    tech = JoinTechnology.find(params [:id])
    render json: {status: 'SUCCESS', message:'technology join  updated', data:tech}, status: :ok
  end
  def delete
    tech = JoinTechnology.find(params [:id])
    render json: {status: 'SUCCESS', message:'joined community deleted', data:tech}, status: :ok
  end
  private

  def join_params
    params.permit(:User_id, :Technology_id)
  end
end