class SongsController < ApplicationController
  before_action :set_artist

  # get
  def new
    @song = Song.new
  end

  # post
  def create
    @song = @artist.songs.new(song_params)
  end 

  private 
    def song_params
      params.require(:song).permit(:name)
    end 

    def set_artist
      @artist = Artist.find(params[:id])
    end 
end
