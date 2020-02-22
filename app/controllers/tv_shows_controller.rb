class TvShowsController < ApplicationController
  def index
  	@tv_shows = TvShow.required_data(params[:q])
  end
end
