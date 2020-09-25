class GenresController < ApplicationController
    
    def new
      @genre = Genre.new
    end 
  
    def create
      @genre = Genre.new(genres_params)
      @genre.save
      redirect_to @genre
    end 
  
    def show 
      @genre = Genre.find_by(id: params[:id])
    end 
  
    def edit
      @genre = Genre.find_by(id: params[:id])
    end 
  
    def update 
      @genre = Genre.find_by(id: params[:id])
      @genre.update(genres_params)
      redirect_to @genre
    end 
  
  
private
    
    def genres_params
      params.require(:genre).permit(:name, :bio)
    end 
  
end
