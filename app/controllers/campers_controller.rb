class CampersController < ApplicationController
  def index
    @search = Camper

    match_fields = {
      "Solar Panel" => 'solar',
      "Roof racks" => 'roof_rack',
      "Alloy wheels" => 'alloy_wheels',
      "All terrain types" => 'all_terrain_tyres',
      "Mud tires" => 'mud_tyres',
      "Twin spare" => 'twin_spares',
      "100L+ Water Storage" => 'large_water',
      "Deep Cycle Batteries" => 'deep_cycle_batteries',
      "Diesel Heating" => 'diesel_heating',
      "Air Conditioning" => 'air_conditioning',
      "Television Screen" => 'tv',
      "Ensuite Facilities" => 'ensuite',
      "Hot Water System" => 'hot_water',
      "Independent Suspension"  => 'independent_suspension'
    }

    if params[:inclusions].present?
      params[:inclusions].each do |field|
        @search = @search.where("#{match_fields[field]}  = ?", true)
      end
    end

    @search = @search.ransack(params[:q])

    @campers = @search.result
  end

  def show
    @camper = Camper.find(params[:id])
  end
end