class HomeController < ApplicationController

  def index
    @photos = Photo.all
    # @user = current_user      # filtering by user
    # @photos = @user.photos
  end

  def show
    @photoSearchResults = Photo.basic_search(params[:query])
  end
end
