# frozen_string_literal: true
module API
  module V1
    class AlbumsController < ApplicationController
      before_action :set_album, only: [:show, :update, :destroy]
      skip_before_action :verify_authenticity_token

      def index
        albums = Album.all.page(params[:page]).per(7)
        render json: albums, status: 200
      end

      def create
        album = Album.create(album_params)
        render json: album, status: 200
      end
      
      def show
        render json: album, status: 200
      end

      def update
        album.update(album_params)
        render json: album, status: 200
      end

      def destroy
        album.destroy
        head :no_content
      end

      private

      def set_album
        album = Album.find(params[:id])
      end

      def album_params
        params.permit(:thumbnail, :name, :description, :release_date, :tags, :user_id)
      end
    end
  end
end