class StoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def new
  end

  def create
    @story = Story.create(story_params)

    if @story.save
      redirect_to root_path, alert: 'Story created succesfully'
    else
      redirect_to root_path, alert: 'Could not save story'
    end
  end

  def show
    @story = Story.includes(:comments).find(params[:id])
  end

  private
    def story_params
      params.require(:story).permit(:title, :content)
    end
end
