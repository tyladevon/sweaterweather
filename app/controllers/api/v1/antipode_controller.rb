class Api::V1::AntipodeController < ApplicationController
  def show
    results = AntipodeForecastFacade.new(params[:location]).get_forecast
    binding.pry
  end
end
