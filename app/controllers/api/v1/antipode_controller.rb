class Api::V1::AntipodeController < ApplicationController
  def show
      facade = AntipodeForecastFacade.new(params[:location])
  end
end
