class HomeController < ApplicationController
  def index
    @sportShows = SportShow.all
  end
end
