class SongsController < ApplicationController

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(param_settings)
        if @song.valid?
            redirect_to song_path(@song)
        else 
            flash[:my_errors] = @song.errors.full_messages
            redirect_to new_song_path
        end

    end

    def show
        @song = Song.find(params[:id])
    end

    def index
        @songs = Song.all
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(param_settings)
        if @song.valid?
            redirect_to song_path(@song)
        else
            flash[:my_errors] = @song.errors.full_messages
            redirect_to edit_song_path
        end
    end

    def destroy
        @song = Song.find(params[:id]).destroy
        redirect_to songs_path
    end

    private

    def param_settings
        params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
    end
end
