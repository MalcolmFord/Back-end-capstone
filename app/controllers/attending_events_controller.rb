class AttendingEventsController < ApplicationController
  def index
    attending = AttendingEvent.order('created_at DESC')
    render json: {status: 'SUCCESS', message:'All attending events', data:attending}, status: :ok
  end
  def show
    attending = AttendingEvent.joins("INNER JOIN upcoming_events ON attending_events.Upcoming_event_id = upcoming_events.id")
    render json: {status: 'SUCCESS', message:'All personal attending events', data:attending}, status: :ok
  end
  def create
    attending = AttendingEvent.create(event_params)
    if attending.save
          render json: {status: 'SUCCESS', message:'Attending event', data:attending}, status: :ok
    else
          render json: {status: 'SUCCESS', message:'Not attending event', data:attending}, status: :ok
    end
  end
  def update
    attending = AttendingEvent.find(params [:id])
    render json: {status: 'SUCCESS', message:'Attended event updated', data:attending}, status: :ok
  end
  def delete
    attending = AttendingEvent.find(params [:id])
    render json: {status: 'SUCCESS', message:'Attended event deleted', data:attending}, status: :ok
  end
  private
  def event_params
        params.permit(:Upcoming_event_id, :User_id,)
  end
end