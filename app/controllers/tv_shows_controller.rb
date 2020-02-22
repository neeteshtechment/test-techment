class TvShowsController < ApplicationController
  before_action :find_tv_show, only: :favourite

  def index
  	@tv_shows = TvShow.required_data(params[:q])
  end

  def favourite
  	fav = Favourite.new(user_id: current_user.id, tv_show_id: @tv_show.id)
  	if fav.save
  		flash[:success] = 'Successfully marked as favourite'
  	else
      flash[:notice] = 'Could not marked as favourite'
  	end
  	redirect_to tv_shows_path
  end

  private

  def find_tv_show
  	@tv_show = TvShow.find(params[:id])
  end
end
