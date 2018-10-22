class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @stories = Story.all
    @story = Story.last

    fresh_when @story, last_modified: @story.updated_at
  end
end
