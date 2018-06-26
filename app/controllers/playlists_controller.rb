class PlaylistsController < ApplicationController
  def create
    playlist = Playlist.create(user_id: current_user.id, song_id: params[:id])
    redirect_to :back
  end
end
