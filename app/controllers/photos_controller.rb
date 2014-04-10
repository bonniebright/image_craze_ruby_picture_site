class PhotosController < ApplicationController

  def index
    @photos = Photos.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to root_url, notice: "Photo uploaded!"
    else
      render "new"
    end
  end

  private
    def photo_params
      params.require(:photo).permit(:title, :image => [:tempfile, :image_file_name, :image_content_type, :image_file_size, :image_updated_at])
    end
end
