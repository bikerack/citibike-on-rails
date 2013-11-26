class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    i=0
    @origin_stations_hash = Gmaps4rails.build_markers(@trip.origin_stations) do |station, marker|
      marker.lat station.latitude
      marker.lng station.longitude
      marker.infowindow "<b>#{station.address} (#{station.distance.round(2)} mi)</b></br> 
        Available bikes...</br>
        now: #{@trip.origin_bike_status[i]}</br> 
        in 15 minuts: #{@trip.origin_history(15)[i]}</br> 
        in 30 minutes: #{@trip.origin_history(30)[i]}"
      i+=1
    end
    n=0
    @destination_stations_hash = Gmaps4rails.build_markers(@trip.destination_stations) do |station, marker|
      marker.lat station.latitude
      marker.lng station.longitude
      marker.infowindow "<b>#{station.address} (#{station.distance.round(2)} mi)</b></br> 
        Available racks...</br>
        now: #{@trip.destination_rack_status[n]}</br> 
        in 15 minutes: #{@trip.destination_history(15)[n]}</br>
        in 30 minuts: #{@trip.destination_history(30)[n]}"
      n+=1
    end

    # Station.near([@trip.origin.latitude, @trip.origin.longitude], 0.25).each_with_index do |station, n|
    # #raise @hash.inspect [{:lat=>40.6872726, :lng=>-73.9873609}]
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @origin = Origin.new(
      :latitude => trip_params[:origin][:latitude],
      :longitude => trip_params[:origin][:longitude]
      )
    @origin.save
    @destination = Destination.new(:address => trip_params[:destination][:address].concat(" New York City"))
    @destination.save
    @trip = Trip.new(:origin_id => @origin.id, :destination_id => @destination.id)
    @trip.save   

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trip }
      else
        format.html { render action: 'new' }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:origin =>[:address, :latitude, :longitude], :destination => [:address])
    end
end
