class SongsController < ApplicationController
  def index
    @songs = Song.all
    @count = Playlist.all
  end

  def create
    song = Song.create(song_params)
  
      if song.valid?
          redirect_to "/songs"
      else
          flash[:errors] = song.errors.full_messages
          redirect_to :back
      end
  end

  def show
    @this_song = Song.find(params[:id])
    @users_added = Playlist.all.where(song_id: params[:id])
  
  end

  private
    def song_params
      params.require(:song).permit(:artist, :title)
    end
end
