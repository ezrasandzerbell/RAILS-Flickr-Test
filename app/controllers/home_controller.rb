class HomeController < ApplicationController

  def index
    @photos = Photo.all
    # @user = current_user      # filtering by user
    # @photos = @user.photos
  end

  def search
    @photoSearchResults = Photo.basic_search(params[:query])
    puts @photoSearchResults.inspect
    render :search
  end


end
