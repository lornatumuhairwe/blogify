class CommentsController < ApplicationController
  before_action :set_commentable, only: [:create]


  def create
    @commentable.comments.create(comment_params)
    redirect_to @commentable, alert: 'comment added successfully!'
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end

    def set_commentable
      @commentable = Story.find(params[:story_id]) if params[:story_id]
      @commentable = Comment.find(params[:comment_id]) if params[:comment_id]
    end
end
