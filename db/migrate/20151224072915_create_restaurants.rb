class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone
      t.string :fax
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :ayce
      t.string :description
      t.string :websiteurl
      t.string :menuurl
      t.decimal :rating
      t.string :hour_open
      t.time :hour_mon_open
      t.time :hour_mon_close
      t.time :hour_tue_open
      t.time :hour_tue_close
      t.time :hour_wed_open
      t.time :hour_wed_close
      t.time :hour_thu_open
      t.time :hour_thu_close
      t.time :hour_fri_open
      t.time :hour_fri_close
      t.time :hour_sat_open
      t.time :hour_sat_close
      t.time :hour_sun_open
      t.time :hour_sun_close
      t.time :happy_hour
      t.string :happy_hour_day

      t.timestamps null: false
    end
  end
end
