module Admin
  class VehiclesController < BaseController
    before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

    # GET /vehicles
    # GET /vehicles.json
    def index
      @vehicles = Vehicle.all
    end

    # GET /vehicles/1
    # GET /vehicles/1.json
    def show
    end

    # GET /vehicles/new
    def new
      @vehicle = Vehicle.new
    end

    # GET /vehicles/1/edit
    def edit
    end

    def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to admin_vehicles_url, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to admin_vehicles_url, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to admin_vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import

  end

  def process_import
    csv = CSV.parse(File.read(params[:file].path), :headers => false)
    csv.each do |row|
      next if row[0] == 'VEHICLE MAKE' || row[0].blank?
      Vehicle.create vehicle_make: row[0],
                     vehicle_model_title: row[1],
                     vehicle_model_descritpion: row[2],
                     start_year: row[3],
                     end_year: row[4],
                     with_breaks: row[6],
                     ball_mass_max: row[7]
    end

    redirect_to admin_vehicles_url, 
                notice: 'Vehicles was successfully imported.'
  end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_vehicle
        @vehicle = Vehicle.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def vehicle_params
        params.require(:vehicle).permit(:vehicle_make, :vehicle_model_title, :vehicle_model_descritpion, :start_year, :end_year, :with_breaks, :ball_mass_max)
      end
  end
end
