class UsersController < ApplicationController
	def favourites
		@favourites = current_user.tv_shows
	end
end
