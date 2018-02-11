module Admin
  class CampersController < BaseController
    before_action :set_camper, only: [:show, :edit, :update, :destroy]

    # GET /campers
    # GET /campers.json
    def index
      @campers = Camper.all
    end

    # GET /campers/1
    # GET /campers/1.json
    def show
    end

    # GET /campers/new
    def new
      @camper = Camper.new
    end

    # GET /campers/1/edit
    def edit
    end

    # POST /campers
    # POST /campers.json
    def create
    @camper = Camper.new(camper_params)

    respond_to do |format|
      if @camper.save
        format.html { redirect_to admin_campers_url, notice: 'Camper was successfully created.' }
        format.json { render :show, status: :created, location: @camper }
      else
        format.html { render :new }
        format.json { render json: @camper.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @camper.update(camper_params)
        format.html { redirect_to admin_campers_url, notice: 'Camper was successfully updated.' }
        format.json { render :show, status: :ok, location: @camper }
      else
        format.html { render :edit }
        format.json { render json: @camper.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @camper.destroy
    respond_to do |format|
      format.html { redirect_to admin_campers_url, notice: 'Camper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import

  end

  def process_import
    csv = CSV.parse(File.read(params[:file].path), :headers => false)
    csv.each do |row|
      next if row[0].blank?
      Camper.create brand: row[0],
                     model: row[1],
                     version: row[2],
                     display_price: row[3],
                     capacity: row[4],
                     link: row[5],
                     type_a: row[6],
                     type_b: row[7],
                     type_c: row[8],
                     atm: row[9],
                     tare: row[10],
                     ball_weight: row[11],
                     solar: row[12] == "YES" ? true : false,
                     roof_rack: row[13] == "YES" ? true : false,
                     alloy_wheels: row[14] == "YES" ? true : false,
                     all_terrain_tyres: row[15] == "YES" ? true : false,
                     mud_tyres: row[16] == "YES" ? true : false,
                     twin_spares: row[17] == "YES" ? true : false,
                     large_water: row[18] == "YES" ? true : false,
                     deep_cycle_batteries: row[19] == "YES" ? true : false,
                     diesel_heating: row[20] == "YES" ? true : false,
                     air_conditioning: row[21] == "YES" ? true : false,
                     tv: row[22] == "YES" ? true : false,
                     ensuite: row[23] == "YES" ? true : false,
                     hot_water: row[24] == "YES" ? true : false,
                     independent_suspension: row[25] == "YES" ? true : false,
                     priority: row[26]
    end

    redirect_to admin_campers_url, 
                notice: 'Campers was successfully imported.'
  end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_camper
        @camper = Camper.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def camper_params
        params.require(:camper).permit(:brand, :model, :version, :display_price, :price_min, :price_max, :capacity, :link, :type_a, :type_b, :type_c, :atm, :tare, :gvm, :ball_weight, :solar, :roof_rack, :alloy_wheels, :all_terrain_tyres, :mud_tyres, :twin_spares, :large_water, :deep_cycle_batteries, :diesel_heating, :air_conditioning, :tv, :ensuite, :hot_water, :independent_suspension, :priority)
      end
  end
end
