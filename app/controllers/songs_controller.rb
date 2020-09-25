class SongsController < ApplicationController

    def index
      @songs = Song.all
    end 
    
    def new
      @song = Song.new
    end 
    
    def create
      @song = Song.new(songs_params)
      @song.save
      redirect_to @song
    end 
    
    def show 
    #   byebug
      @song = Song.find_by(id: params[:id])
    end 
    
    def edit
      @song = Song.find_by(id: params[:id])
    end 
    
    def update 
      @song = Song.find_by(id: params[:id])
      @song.update(songs_params)
      redirect_to @song
    end 
    
    
  private
      
    def songs_params
      params.require(:song).permit(:name, :bio)
    end 
    

end
