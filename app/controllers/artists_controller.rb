class ArtistsController < ApplicationController
  before_action :set_billboard 
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = @billboard.artists
  end

  def show
  end

  def new
    @artist = @billboard.artists.new
    # render partial: "form"
  end

  def create
    @artist = @billboard.artists.create(artist_params)
    if @artist.save
      redirect_to @artists
    else
      render :new 
    end 
    # binding.pry 
  end 

  def edit
    # render partial: "form"
  end

  def update
    if @artist.update(artist_params)
      redirect_to [@billboard, @artist]
    else
      render :edit
    end 
  end 

  def destroy
    @artist.destroy
    redirect_to billboard_artist_path 
  end 

  private 
    def artist_params
      params.require(:artist).permit(:name)
    end 
    def set_billboard
      @billboard = Billboard.find(params[:billboard_id])
    end 

  def set_artist
    @artist = Artist.find(params[:id])
  end 
end

# create 