class SongsController < ApplicationController
  before_action :set_artist
  def new
    @song = Song.new
    render partial: 'form'
  end

  def create
    @song = @artist.songs.new(song_params)
    binding.pry
    if @song.save
      # redirect_to artist_song_path(@song.artist_id, @song)
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end
    def song_params
      params.require(:song).permit(:title, :genre, :length)
    end
  
end
