class OriginsController < ApplicationController
  before_action :set_origin, only: [:show, :edit, :update, :destroy]

  # GET /origins
  # GET /origins.json
  def index
    @origins = Origin.all
  end

  # GET /origins/1
  # GET /origins/1.json
  def show
  end

  # GET /origins/new
  def new
    @origin = Origin.new
  end

  # GET /origins/1/edit
  def edit
  end

  # POST /origins
  # POST /origins.json
  def create
    @origin = Origin.new(origin_params)

    respond_to do |format|
      if @origin.save
        format.html { redirect_to @origin, notice: 'Origin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @origin }
      else
        format.html { render action: 'new' }
        format.json { render json: @origin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /origins/1
  # PATCH/PUT /origins/1.json
  # def update
  #   respond_to do |format|
  #     if @origin.update(origin_params)
  #       format.html { redirect_to @origin, notice: 'Origin was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @origin.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /origins/1
  # DELETE /origins/1.json
  # def destroy
  #   @origin.destroy
  #   respond_to do |format|
  #     format.html { redirect_to origins_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_origin
      @origin = Origin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def origin_params
      params.require(:origin).permit(:address, :latitude, :longitude, :station_id)
    end
end
