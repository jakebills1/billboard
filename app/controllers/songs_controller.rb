class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :update, :edit, :destroy]

  def new
    @song = Song.new
    render partial: 'form'
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      # redirect_to artist_song_path(@song.artist_id, @song)
      redirect_to artists_path
    else
      render :new
    end
  end

  def edit
    render partial: 'form'
  end
  
  def update
    if @song.update(song_params)
      redirect_to artists_path
    else 
      render :new
    end
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end
  
    def song_params
      params.require(:song).permit(:title, :genre, :length, :chart_id, :playlist_id)
    end

    def set_song
      @song = Song.find(params[:id])
    end
  
end
