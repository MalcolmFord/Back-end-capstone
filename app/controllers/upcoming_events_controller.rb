class UpcomingEventsController < ApplicationController
    skip_before_action :authenticate_request, only: [:create, :index, :show]

  def index
    event = UpcomingEvent.order('created_at DESC')
    render json: {status: 'SUCCESS', message:'All Events', data:event}, status: :ok
  end
  def create
    event = UpcomingEvent.new(event_params)
    if event.save
          render json: {status: 'SUCCESS', message:'Creaded Event', data:event}, status: :ok
    else
          render json: {status: 'SUCCESS', message:'Event not created', data:event}, status: :ok
    end
  end
  def show
    event = UpcomingEvent.where(Technology_id: params[:id])
    render json: {status: 'SUCCESS', message:'Single event', data:event}, status: :ok
  end
  def update
    event = UpcomingEvent.find(params[:id])
    if
    event.update_attributes(event_params)
     render json: {status: 'SUCCESS', message:'Event post updated', data:event}, status: :ok
    else
      render json: {status: 'ERROR', message:'Event post not updated', data:event.errors}, status: :unprocessable_entity
    end
  end
  def delete
    event = UpcomingEvent.find(params[:id])
    event.destroy
  end

  private
  def event_params
    params.permit(:User_id, :Technology_id, :location, :date, :time, :post)
  end
end