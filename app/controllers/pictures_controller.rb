class PicturesController < ApplicationController
 
  def show
  	@picture = Picture.find(params[:id])
    end


  def index
  	@list_of_pictures = Picture.order("caption")  
   end

def new

end

  def create
  	p = Picture.new
    p.caption = params[:caption]
    p.source = params[:source]
    p.save
   
    redirect_to pictures_url,  :notice => "Picture created successfully." 
  end

def destroy
  p = Picture.find(params[:id])
  p.destroy
  redirect_to pictures_url, :notice => "Picture deleted successfully."
end 

  def edit
  	@picture = Picture.find(params[:id])
  end

   def update
  	p = Picture.find(params[:id])
    p.caption = params[:caption]
    p.source = params[:source]
    p.save

    redirect_to picture_url(p.id), :notice => "Updated picture successfully."
  end
end


#Why aren't the notices appearing???
