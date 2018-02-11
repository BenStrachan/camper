class VehiclesController < ApplicationController
  layout "visitors"
  def index
    @vehicles = Vehicle.ransack(params[:q])
                       .result

    render 'index', layout: false
  end
end
