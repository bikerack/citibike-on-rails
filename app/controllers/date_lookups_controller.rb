class DateLookupsController < ApplicationController
  before_action :set_date_lookup, only: [:show, :edit, :update, :destroy]

  # GET /date_lookups
  # GET /date_lookups.json
  def index
    @date_lookups = DateLookup.all
  end

  # GET /date_lookups/1
  # GET /date_lookups/1.json
  def show
  end

  # GET /date_lookups/new
  def new
    @date_lookup = DateLookup.new
  end

  # GET /date_lookups/1/edit
  def edit
  end

  # POST /date_lookups
  # POST /date_lookups.json
  def create
    @date_lookup = DateLookup.new(date_lookup_params)

    respond_to do |format|
      if @date_lookup.save
        format.html { redirect_to @date_lookup, notice: 'Date lookup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @date_lookup }
      else
        format.html { render action: 'new' }
        format.json { render json: @date_lookup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_lookups/1
  # PATCH/PUT /date_lookups/1.json
  def update
    respond_to do |format|
      if @date_lookup.update(date_lookup_params)
        format.html { redirect_to @date_lookup, notice: 'Date lookup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @date_lookup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_lookups/1
  # DELETE /date_lookups/1.json
  def destroy
    @date_lookup.destroy
    respond_to do |format|
      format.html { redirect_to date_lookups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_lookup
      @date_lookup = DateLookup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def date_lookup_params
      params.require(:date_lookup).permit(:name)
    end
end
