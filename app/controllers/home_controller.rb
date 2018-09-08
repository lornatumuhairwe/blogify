class HomeController < ApplicationController
  def index
    @stories = Story.all
    @story = Story.last
  end
end
