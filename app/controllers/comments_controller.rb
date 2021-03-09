class CommentsController < ApplicationController
  def index
    comments=Comment.all
    render json: comments
  end

  def new
  end

  def create
    comment = Comment.create(comment_params)
    render json: comment
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
      params.permit(:id, :user_id, :site_id, :content)
  end
end
