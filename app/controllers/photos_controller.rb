class PhotosController < ApplicationController



  def index
    # @photos = Photo.all
    @user = current_user      # filtering by user
    @photos = @user.photos
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(:title => photo_params[:title], :details => photo_params[:details], :imgfile => photo_params[:imgfile], :user_id => current_user.id)
    if @photo.save
      flash[:notice] = "Photo added!"
      redirect_to photos_path
    else
      flash[:notice] = "Photo not added!"
      render :new
    end
  end

  def edit
      @photo = Photo.find(params[:id])
    end

    def update
      @photo = Photo.find(params[:id])
      if @photo.update(photo_params)
        flash[:notice] = "Photo updated!"
        redirect_to photos_path
      else
        render :edit
      end
    end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    flash[:notice] = "Photo deleted!"
    redirect_to photos_path
  end

private
  def photo_params
    params.require(:photo).permit(:title, :details, :imgfile)
  end
end
