class PhotosController < ApplicationController
  private

  def photo_params
    params.require(:photo).permit(:content, :image)
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      # Handle successful update, e.g., redirect to another page
    else
      render 'edit'
    end
  end

end
