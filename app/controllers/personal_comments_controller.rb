class PersonalCommentsController < ApplicationController
  def index
    comment = PersonalComment.order('created_at DESC')
    render json: {status: 'SUCCESS', message:'All personal post comments', data:comment}, status: :ok
  end
  def create
    comment = PersonalComment.create(comment_params)
    if comment.save
          render json: {status: 'SUCCESS', message:'Creaded comment', data:comment}, status: :ok
    else
          render json: {status: 'SUCCESS', message:'Comment not created', data:comment}, status: :ok
    end
  end
  def show
    comment = PersonalComment.where(Technology_id: params[:id])
    render json: {status: 'SUCCESS', message:'Comment/s shown', data:comment}, status: :ok
  end
  def update
    comment = PersonalComment.find(params [:id])
    render json: {status: 'SUCCESS', message:'Comment updated', data:comment}, status: :ok
  end
  def delete
    comment = PersonalComment.find(params [:id])
    render json: {status: 'SUCCESS', message:'Comment updated', data:comment}, status: :ok
  end
end