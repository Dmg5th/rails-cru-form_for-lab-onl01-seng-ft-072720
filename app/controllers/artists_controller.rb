class ArtistsController < ApplicationController

    def new
      @artist = Artist.new
    end 

    def create
      @artist = Artist.new(artists_params)
      @artist.save
      redirect_to @artist
    end 

    def show 
      @artist = Artist.find_by(id: params[:id])
    end 

    def edit
      @artist = Artist.find_by(id: params[:id])
    end 

    def update 
      @artist = Artist.find_by(id: params[:id])
      @artist.update(artists_params)
      redirect_to @artist 
    end 


private

    def artists_params
        params.require(:artist).permit(:name, :bio)
    end 

end















