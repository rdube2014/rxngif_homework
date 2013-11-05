class PicturesController < ApplicationController
  def show
  	@picture = Picture.find(params[:id])
  end


  def index
  	@list_of_pictures = Picture.all  
  end

  def create
  	
  end

  def edit
  	@picture = Picture.ind(params[:id])
  
  def update
  	@picture = Picture.find(params[:id])
  end
end
