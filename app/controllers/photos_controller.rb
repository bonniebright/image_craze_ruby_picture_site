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
      params.require(:photo).permit(:title, :image)
    end
end
