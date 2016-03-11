require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post :create, restaurant: { ayce: @restaurant.ayce, city: @restaurant.city, description: @restaurant.description, fax: @restaurant.fax, happy_hour: @restaurant.happy_hour, happy_hour_day: @restaurant.happy_hour_day, hour_fri_close: @restaurant.hour_fri_close, hour_fri_open: @restaurant.hour_fri_open, hour_mon_close: @restaurant.hour_mon_close, hour_mon_open: @restaurant.hour_mon_open, hour_open: @restaurant.hour_open, hour_sat_close: @restaurant.hour_sat_close, hour_sat_open: @restaurant.hour_sat_open, hour_sun_close: @restaurant.hour_sun_close, hour_sun_open: @restaurant.hour_sun_open, hour_thu_close: @restaurant.hour_thu_close, hour_thu_open: @restaurant.hour_thu_open, hour_tue_close: @restaurant.hour_tue_close, hour_tue_open: @restaurant.hour_tue_open, hour_wed_close: @restaurant.hour_wed_close, hour_wed_open: @restaurant.hour_wed_open, menuurl: @restaurant.menuurl, name: @restaurant.name, phone: @restaurant.phone, rating: @restaurant.rating, state: @restaurant.state, websiteurl: @restaurant.websiteurl, zip: @restaurant.zip }
    end

    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should show restaurant" do
    get :show, id: @restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant
    assert_response :success
  end

  test "should update restaurant" do
    patch :update, id: @restaurant, restaurant: { ayce: @restaurant.ayce, city: @restaurant.city, description: @restaurant.description, fax: @restaurant.fax, happy_hour: @restaurant.happy_hour, happy_hour_day: @restaurant.happy_hour_day, hour_fri_close: @restaurant.hour_fri_close, hour_fri_open: @restaurant.hour_fri_open, hour_mon_close: @restaurant.hour_mon_close, hour_mon_open: @restaurant.hour_mon_open, hour_open: @restaurant.hour_open, hour_sat_close: @restaurant.hour_sat_close, hour_sat_open: @restaurant.hour_sat_open, hour_sun_close: @restaurant.hour_sun_close, hour_sun_open: @restaurant.hour_sun_open, hour_thu_close: @restaurant.hour_thu_close, hour_thu_open: @restaurant.hour_thu_open, hour_tue_close: @restaurant.hour_tue_close, hour_tue_open: @restaurant.hour_tue_open, hour_wed_close: @restaurant.hour_wed_close, hour_wed_open: @restaurant.hour_wed_open, menuurl: @restaurant.menuurl, name: @restaurant.name, phone: @restaurant.phone, rating: @restaurant.rating, state: @restaurant.state, websiteurl: @restaurant.websiteurl, zip: @restaurant.zip }
    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete :destroy, id: @restaurant
    end

    assert_redirected_to restaurants_path
  end
end
