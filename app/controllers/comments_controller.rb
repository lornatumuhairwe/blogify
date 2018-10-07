class CommentsController < ApplicationController
  before_action :set_commentable, only: [:create]


  def create
    @commentable.comments.build(comment_params)
    if @commentable.save
      @comment = true if @commentable.try(:commentable_type)
      respond_to do |format|
        format.js
      end
    else
      byebug
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :user_id)
    end

    def set_commentable
      @commentable = Story.find(params[:story_id]) if params[:story_id]
      @commentable = Comment.find(params[:comment_id]) if params[:comment_id]
    end
end
