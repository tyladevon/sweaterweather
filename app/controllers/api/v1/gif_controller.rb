class Api::V1::GifController < ApplicationController
  def show
    gifs = GifFacade.new(params[:location])
    render json: GifSerializer.new(gifs)
  end
end
