class CommentsController < ApplicationController
  before_action :set_story, only: [:create]

  def create
    @story.comments.create(comment_params)
    redirect_to @story, alert: 'comment added successfully!'
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end

    def set_story
      @story = Story.find(params[:story_id])
    end
end
