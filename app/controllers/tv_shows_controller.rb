class TvShowsController < ApplicationController
  def index
  	@tv_shows = TvShow.joins(:channel).select('tv_shows.*, channels.name as channel_name')
  end

  def create
  end
end
