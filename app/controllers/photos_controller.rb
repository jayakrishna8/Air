class PhotosController < ApplicationController
  def destory
  	@photo = Photo.find(params[:id])
  	room = @photo.room
  	@photo.destory
  	@photo = Photo.where(room_id: room_id)

  	respond_to :js
  end
end