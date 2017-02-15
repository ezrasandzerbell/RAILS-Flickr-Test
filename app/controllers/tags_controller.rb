class TagsController < ApplicationController

    def show
      @tag = Tag.find(params[:id])
    end

    def new
      @photo = Photo.find(params[:photo_id])
      @tag = @photo.tags.new
    end

    def create
      @photo = Photo.find(params[:photo_id])
      @tag = @photo.tags.new(tag_params)
      if @tag.save
        flash[:notice] = "Tag added!"
        redirect_to photos_path
      else
        flash[:notice] = "Tag not added!"
        render :new
      end
    end

    def edit
       @photo = Photo.find(params[:photo_id])
        @tag = Tag.find(params[:id])
      end

      def update
        @photo = Photo.find(params[:photo_id])
        @tag = Tag.find(params[:id])
        if @tag.update(tag_params)
          flash[:notice] = "Tag updated!"
          redirect_to photo_tag_path
        else
          render :edit
        end
      end

    def destroy
      @photo = Photo.find(params[:photo_id])
      @tag = Tag.find(params[:id])
      @tag.destroy
      flash[:notice] = "Tag deleted!"
      redirect_to photo_tag_path(@photo)
    end

  private
    def tag_params
      params.require(:tag).permit(:name)
    end
  end
