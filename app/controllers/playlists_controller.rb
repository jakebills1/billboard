class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :update, :edit, :destroy]

  def index
    @playlists = current_user.playlists
  end

  def show
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = current_user.playlists.new(playlist_params)
    if @playlist.save
      redirect_to playlists_path
    else
      render :new
    end
      
  end

  def edit

  end

  def update
    if @playlist.update(playlist_params)
      redirect_to playlists_path
    else
      render :edit
    end
  end

  def destroy
    @playlist.destroy
    redirect_to playlists_path
  end

  private

    def playlist_params
      params.require(:playlist).permit(:name)
    end

    def set_playlist
      @playlist = current_user.playlists.find(params[:id])
    end

  
end
