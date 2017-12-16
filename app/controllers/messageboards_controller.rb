class MessageboardsController < ApplicationController

  # skip_before_action :authenticate_request, only: [:create, :index]
 
  def index
    message = Messageboard.where(technology_id: params[:id])

    # post = PersonalPost.find(params[:User_id])
    render json: {status: 'SUCCESS', message:'Loaded messages', data:message}, status: :ok
  end
  def show
    message = Messageboard.where(tehcnology_id: params[:id])
    render json: {status: 'SUCCESS', message:'Loaded messages', data:message}, status: :ok
  end
  def create
    message = Messageboard.new(message_params)
    if message.save
      render json: {status: 'SUCCESS', message:'Created a new message', data:message}, status: :ok
    else
      render json: {status: 'ERROR', message:'message did not save, try again!', data:message}, status: :ok
    end
  end
  def update
    message = Messageboard.find(params[:id])
    if message.save
      render json: {status: 'SUCCESS', message:'Created a new message', data:message}, status: :ok
    else
      render json: {status: 'ERROR', message:'message did not save, try again!', data:message}, status: :ok
    end  
  end
  def destroy
    message = Messageboard.find(params[:id])

  end

  private
  def message_params
    params.permit(:user_id, :technology_id, :post)
  end

end
