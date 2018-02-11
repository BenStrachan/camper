class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.ransack(params[:q])
                       .result
                       
    render 'index', layout: false
  end
end