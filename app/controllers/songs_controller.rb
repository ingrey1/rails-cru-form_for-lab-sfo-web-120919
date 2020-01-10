require 'pry'

class SongsController < ApplicationController
    def create
        artist = Artist.find(params[:song][:artist_id])
        genre = Genre.find(params[:song][:genre_id])
        song = Song.new(strong_params('song', 'name'))
        song.artist = artist
        song.genre = genre
        song.save
        redirect_to(song)

    end 

    def new

        @song = Song.new
    end
     

    def update

        artist = Artist.find(params[:song][:artist_id])
        genre = Genre.find(params[:song][:genre_id])
        song = Song.find(params[:id])
        song.update(strong_params('song', 'name'))
        song.update(genre: genre, artist: artist)
        redirect_to(song)  

    end

    
    def edit

        @song = Song.find(params[:id])



    end 

    def show

        @song = Song.find(params[:id])
        #render "song/show"
        #@binding.pry

    end
    
    def index

        @songs = Song.all

    end 

    def strong_params(entry, *args)
      params.require(entry).permit(*args)
    end
end
