class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants
  # GET /restaurants.json
  def index
    #@restaurants = Restaurant.all
    
    @client = GooglePlaces::Client.new('AIzaSyCMO-khNk81Etm_fs-YvyAJaA_YwAmu1sQ')
    
    @results = @client.spots_by_query("sushi near las vegas", :radius => 100, :types => ['sushi']).sort_by{|r| -r[:rating]}

    @search = Search.new(Restaurant, params[:search])
    
    @search.order = 'name'  # optional
    
    @restaurants = @search.run
    
    @hash = Gmaps4rails.build_markers(@results) do |restaurant, marker|
      
    marker.lat restaurant.lat
    marker.lng restaurant.lng
    marker.infowindow("#{restaurant.name}
        #{restaurant.formatted_address}")
   end
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:avatar, :restaurant, :search, :name, :phone, :fax, :city, :state, :zip, :ayce, :description, :websiteurl, :menuurl, :rating, :hour_open, :hour_mon_open, :hour_mon_close, :hour_tue_open, :hour_tue_close, :hour_wed_open, :hour_wed_close, :hour_thu_open, :hour_thu_close, :hour_fri_open, :hour_fri_close, :hour_sat_open, :hour_sat_close, :hour_sun_open, :hour_sun_close, :happy_hour, :happy_hour_day, :address, :latitude, :longitude)
    end
  
end
