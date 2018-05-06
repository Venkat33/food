class MediasController < ApplicationController

    def new
      @medias = Medias.new
    end

    private
    def media_params
      params.require(:media).permit(:username, :description, :user_id)
    end
    end
