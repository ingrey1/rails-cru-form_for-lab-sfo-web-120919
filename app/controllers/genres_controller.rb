class GenresController < ApplicationController
    def create

        genre = Genre.new(strong_params('genre', 'name'))
        genre.save
        redirect_to(genre)

    end 

    def new

        @genre = Genre.new
    end
     

    def update

        genre = Genre.find(params[:id])
        genre.update(strong_params('genre', 'name'))
        redirect_to(genre)  

    end

    
    def edit

        @genre = Genre.find(params[:id])



    end 

    def show

        @genre = Genre.find(params[:id])
        #render "genre/show"

    end
    
    def index

    end 

    def strong_params(entry, *args)
      params.require(entry).permit(*args)
    end 
 
end
