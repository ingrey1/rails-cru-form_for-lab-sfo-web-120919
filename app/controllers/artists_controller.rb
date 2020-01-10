class ArtistsController < ApplicationController
    def create

        artist = Artist.new(strong_params('artist', 'name', 'bio'))
        artist.save
        redirect_to(artist)

    end 

    def new

        @artist = Artist.new
end
     

    def update

        artist = Artist.find(params[:id])
        artist.update(strong_params('artist', 'name', 'bio'))
        redirect_to(artist)  

    end

    
    def edit

        @artist = Artist.find(params[:id])



    end 

    def show

        @artist = Artist.find(params[:id])
        #render "artist/show"

    end
    
    def index

    end 

    def strong_params(entry, *args)
      params.require(entry).permit(*args)
    end 
    
end
