class PicturesController < ApplicationController
  def show
  	@picture = Picture.find(params[:id])
  end


  def index
  	@list_of_pictures = Picture.all  
  end

  def create
  	@picture = Picture.new
    @picture.caption = params[:caption]
    @picture.source = params[:source]
    @picture.save
  end

  def edit
  	@picture = Picture.ind(params[:id])
  end

  def update
  	@picture = Picture.find(params[:id])
  end
end
