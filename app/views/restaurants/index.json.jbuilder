json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :phone, :fax, :city, :state, :zip, :ayce, :description, :websiteurl, :menuurl, :rating, :hour_open, :hour_mon_open, :hour_mon_close, :hour_tue_open, :hour_tue_close, :hour_wed_open, :hour_wed_close, :hour_thu_open, :hour_thu_close, :hour_fri_open, :hour_fri_close, :hour_sat_open, :hour_sat_close, :hour_sun_open, :hour_sun_close, :happy_hour, :happy_hour_day
  json.url restaurant_url(restaurant, format: :json)
end
