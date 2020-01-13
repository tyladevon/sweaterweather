class Api::V1::AntipodeController < ApplicationController
  def show
    AntipodeForecastFacade.new(params[:location]).get_forecast
  end
end
