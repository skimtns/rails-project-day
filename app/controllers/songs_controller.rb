class SongsController < ApplicationController
  # before_action :set_artist
  before_action :set_billboard
  before_action :set_song, only: [:show, :destroy]

  def index
    @songs = @billboard.songs
  end
  # get
  def new
    @song = Song.new
  end

  def show
  end 

  # post
  def create
    @song = @artist.songs.new(song_params)
  end 

  private 
    def song_params
      params.require(:song).permit(:name)
    end 

    # def set_artist
    #   @artist = Artist.find(params[:artist_id])
    # end 

    def set_billboard
      @billboard = Billboard.find(params[:billboard_id])
    end 

    def set_song
      @song = Song.find(params[:id])
    end 

end
