class ArtworksController < ApplicationController
  
  def index 
    artworks = User.find(params[:id]).artworks
    render json: artworks
  end 
  
  def show 
    render json: find_artwork
  end
  
  def create
    artwork = Artwork.new(artwork_params)
    
    if artwork.save 
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 418
    end
  end 
  
  def update 
    artwork = find_artwork
    
    if artwork.update(artwork_params) 
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 418
    end
  end 
  
  def destroy
    artwork = find_artwork
    artwork.destroy
    render json: artwork
  end 
  
  private 
  
  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end 
  
  def find_artwork
    Artwork.find(params[:id])
  end  
end 